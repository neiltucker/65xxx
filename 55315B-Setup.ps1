# ==============================================================================
# Azure Cloud Shell Script: Provision SQL Server 2025 Lab Environment
# ==============================================================================

# 1. Define Variables
$TimeStamp         = Get-Date -Format "yyyyMMddHHmm"
$BaseName          = "55315-MIA-SQL"

# Make names unique by appending the timestamp
$VMName            = "$BaseName" 
$ResourceGroupName = "$VMName-$TimeStamp" + "rg"
$DomainLabel       = "lab-" + $VMName.ToLower() + $TimeStamp 

$Location          = "eastus" 
$VMSize            = "Standard_D2s_v5"
$ImageURN          = "MicrosoftSQLServer:sql2025-ws2025:entdev-gen2:latest"

$AdminUser         = "Adminz"
$AdminPassString   = 'Pa$$w0rdPa$$w0rd'
$AdminPassword     = ConvertTo-SecureString $AdminPassString -AsPlainText -Force
$AdminCreds        = New-Object System.Management.Automation.PSCredential($AdminUser, $AdminPassword)

# 2. Create Resource Group
Write-Host "Creating Resource Group: $ResourceGroupName..."
New-AzResourceGroup -Name $ResourceGroupName -Location $Location -Force

# 3. Create Virtual Machine
Write-Host "Provisioning Virtual Machine: $VMName..."
New-AzVM `
    -ResourceGroupName $ResourceGroupName `
    -Name $VMName `
    -Location $Location `
    -VirtualNetworkName "LabVNet" `
    -SubnetName "LabSubnet" `
    -SecurityGroupName "LabNSG" `
    -PublicIpAddressName "LabPublicIP" `
    -DomainNameLabel $DomainLabel `
    -OpenPorts 3389 `
    -Image $ImageURN `
    -Size $VMSize `
    -Credential $AdminCreds

# 4. Define the Database Manager Script (databases.ps1)
$DbManagerScript = @'
<#
.SYNOPSIS
    SQL Database Download & Install Manager.
    Downloads .bak files into C:\Classfiles and restores them to a local SQL Server.

.DESCRIPTION
    Supports AdventureWorks2025 and AdventureWorksDW2025.
#>

[CmdletBinding()]
param(
    [string]$ServerInstance = 'localhost',
    [string]$BasePath       = 'C:\Classfiles',
    [ValidateRange(0,3)] [int]$DbChoice     = -1,
    [ValidateRange(1,3)] [int]$ActionChoice = -1
)

$ScriptVersion = 'v3.1 (2-DB + TrustCert-safe)'
Write-Host ("[databases.ps1 {0}] script loaded from: {1}" -f $ScriptVersion, $PSCommandPath) -ForegroundColor DarkGreen

$Databases = @(
    [pscustomobject]@{ ID=1; Name='AdventureWorks2025'; FileName='AdventureWorks2025.bak'; Url='https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2019.bak' }
    [pscustomobject]@{ ID=2; Name='AdventureWorksDW2025'; FileName='AdventureWorksDW2025.bak'; Url='https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2019.bak' }
)

if (-not (Test-Path -Path $BasePath)) {
    New-Item -ItemType Directory -Path $BasePath -Force | Out-Null
    Write-Host "Created directory: $BasePath" -ForegroundColor Green
}

$script:SqlTooling        = $null
$script:SupportsTrustCert = $false

function Initialize-SqlTooling {
    if ($script:SqlTooling) { return }

    $cmd = Get-Command -Name Invoke-Sqlcmd -ErrorAction SilentlyContinue
    if ($cmd) {
        $script:SqlTooling = 'module'
        $script:SupportsTrustCert = $cmd.Parameters.ContainsKey('TrustServerCertificate')
        return
    }

    if (Get-Command -Name sqlcmd.exe -ErrorAction SilentlyContinue) {
        $script:SqlTooling = 'exe'
        return
    }
    throw "Neither 'Invoke-Sqlcmd' nor sqlcmd.exe is available."
}

function Invoke-Sql {
    param([Parameter(Mandatory)] [string]$Server, [Parameter(Mandatory)] [string]$Query, [int]$QueryTimeout = 0)
    Initialize-SqlTooling

    if ($script:SqlTooling -eq 'module') {
        $splat = @{ ServerInstance = $Server; Query = $Query; QueryTimeout = $QueryTimeout; ErrorAction = 'Stop' }
        if ($script:SupportsTrustCert) { $splat.TrustServerCertificate = $true }
        return Invoke-Sqlcmd @splat
    }

    $tmp = [IO.Path]::Combine([IO.Path]::GetTempPath(), [IO.Path]::GetRandomFileName() + '.sql')
    Set-Content -LiteralPath $tmp -Value $Query -Encoding ASCII
    try {
        $output = & sqlcmd.exe -S $Server -E -C -b -h -1 -W -t $QueryTimeout -i $tmp 2>&1
        if ($LASTEXITCODE -ne 0) { $output = & sqlcmd.exe -S $Server -E -b -h -1 -W -t $QueryTimeout -i $tmp 2>&1 }
        if ($LASTEXITCODE -ne 0) { throw "sqlcmd failed (exit $LASTEXITCODE):`n$($output -join [Environment]::NewLine)" }
        return $output
    } finally {
        Remove-Item -LiteralPath $tmp -Force -ErrorAction SilentlyContinue
    }
}

function Get-SqlDefaultPaths {
    param([Parameter(Mandatory)][string]$Server)
    $q = @"
SELECT CAST(ISNULL(SERVERPROPERTY('InstanceDefaultDataPath'), (SELECT CAST(value_in_use AS NVARCHAR(512)) FROM sys.configurations WHERE name = 'DefaultDataPath')) AS NVARCHAR(512)) AS DataPath,
       CAST(ISNULL(SERVERPROPERTY('InstanceDefaultLogPath'), (SELECT CAST(value_in_use AS NVARCHAR(512)) FROM sys.configurations WHERE name = 'DefaultLogPath')) AS NVARCHAR(512)) AS LogPath;
"@
    $r = Invoke-Sql -Server $Server -Query $q
    $data = ($r.DataPath | Select-Object -First 1)
    $log  = ($r.LogPath  | Select-Object -First 1)

    if ([string]::IsNullOrWhiteSpace($data)) {
        $r2 = Invoke-Sql -Server $Server -Query "SELECT TOP 1 LEFT(physical_name, LEN(physical_name) - CHARINDEX('\', REVERSE(physical_name)) + 1) AS MasterDir FROM sys.master_files WHERE database_id = 1 AND type = 0;"
        $data = ($r2.MasterDir | Select-Object -First 1)
    }
    if ([string]::IsNullOrWhiteSpace($log)) { $log = $data }
    if ($data -and $data[-1] -ne '\') { $data = $data + '\' }
    if ($log  -and $log[-1]  -ne '\') { $log  = $log  + '\' }
    return [pscustomobject]@{ DataPath = $data; LogPath = $log }
}

function Download-Database {
    param([Parameter(Mandatory)]$Database)
    $Destination = Join-Path -Path $BasePath -ChildPath $Database.FileName
    if (Test-Path -LiteralPath $Destination) {
        $size = (Get-Item -LiteralPath $Destination).Length
        if ($size -gt 0) {
            Write-Host "[$($Database.Name)] Already downloaded. Skipping." -ForegroundColor Yellow
            return $true
        }
        Remove-Item -LiteralPath $Destination -Force
    }
    Write-Host "`n[$($Database.Name)] Downloading to $Destination..." -ForegroundColor Cyan
    try {
        if (Get-Command -Name Start-BitsTransfer -ErrorAction SilentlyContinue) {
            Start-BitsTransfer -Source $Database.Url -Destination $Destination -ErrorAction Stop
        } else {
            $oldPref = $ProgressPreference; $ProgressPreference = 'SilentlyContinue'
            try { Invoke-WebRequest -Uri $Database.Url -OutFile $Destination -UseBasicParsing -ErrorAction Stop } finally { $ProgressPreference = $oldPref }
        }
        Write-Host "[$($Database.Name)] Download successful." -ForegroundColor Green
        return $true
    } catch {
        if (Test-Path -LiteralPath $Destination) { Remove-Item -LiteralPath $Destination -Force -ErrorAction SilentlyContinue }
        Write-Host "[$($Database.Name)] Download failed: $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }
}

function Install-Database {
    param([Parameter(Mandatory)]$Database)
    $BackupFile = Join-Path -Path $BasePath -ChildPath $Database.FileName
    if (-not (Test-Path -LiteralPath $BackupFile)) {
        Write-Host "`n[$($Database.Name)] Cannot install. Backup file not found." -ForegroundColor Yellow
        return
    }
    Write-Host "`n[$($Database.Name)] Restoring to $ServerInstance..." -ForegroundColor Cyan
    try {
        $fileListQ = "RESTORE FILELISTONLY FROM DISK = N'$($BackupFile.Replace("'","''"))';"
        $files = Invoke-Sql -Server $ServerInstance -Query $fileListQ
        if (-not $files) { throw "RESTORE FILELISTONLY returned no rows." }

        $paths = Get-SqlDefaultPaths -Server $ServerInstance
        $moves = New-Object System.Collections.Generic.List[string]
        $dataFileIdx = 0

        foreach ($f in $files) {
            $logical = "$($f.LogicalName)"
            $typeRaw = "$($f.Type)".Trim().ToUpper()
            $typeDesc = ''
            if ($f.PSObject.Properties.Name -contains 'TypeDesc') { $typeDesc = "$($f.TypeDesc)".Trim().ToUpper() }

            $fileType = switch -Wildcard ($typeRaw) {
                'D' { 'D'; break } 'L' { 'L'; break } 'S' { 'S'; break } 'F' { 'F'; break }
                default {
                    switch -Wildcard ($typeDesc) {
                        'ROWS*' { 'D'; break } 'LOG*' { 'L'; break } 'FILESTREAM*' { 'S'; break }
                        '*MEMORY*OPTIMIZED*' { 'S'; break } 'FULLTEXT*' { 'F'; break } default { 'D' }
                    }
                }
            }
            switch ($fileType) {
                'L' { $physical = Join-Path $paths.LogPath ("{0}.ldf" -f $Database.Name) }
                'D' { $dataFileIdx++; $ext = if ($dataFileIdx -eq 1) { '.mdf' } else { "_$dataFileIdx.ndf" }; $physical = Join-Path $paths.DataPath ("{0}{1}" -f $Database.Name, $ext) }
                default { $physical = Join-Path $paths.DataPath ("{0}_{1}" -f $Database.Name, $logical) }
            }
            $moves.Add("MOVE N'$($logical.Replace("'","''"))' TO N'$($physical.Replace("'","''"))'")
        }
        $moveClause = $moves -join ",`n     "

        $restoreSql = @"
USE [master];
IF DB_ID(N'$($Database.Name)') IS NOT NULL
BEGIN
    ALTER DATABASE [$($Database.Name)] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
END;
RESTORE DATABASE [$($Database.Name)] FROM DISK = N'$($BackupFile.Replace("'","''"))' WITH FILE = 1, $moveClause, REPLACE, STATS = 5;
IF DB_ID(N'$($Database.Name)') IS NOT NULL
    ALTER DATABASE [$($Database.Name)] SET MULTI_USER;
"@
        Invoke-Sql -Server $ServerInstance -Query $restoreSql -QueryTimeout 0 | Out-Host

        $check = Invoke-Sql -Server $ServerInstance -Query "SELECT state_desc FROM sys.databases WHERE name = N'$($Database.Name)';"
        if (($check.state_desc | Select-Object -First 1) -eq 'ONLINE') {
            Write-Host "[$($Database.Name)] Successfully restored." -ForegroundColor Green
        }
    } catch {
        Write-Host "[$($Database.Name)] Restore failed: $($_.Exception.Message)" -ForegroundColor Red
    }
}

function Process-Selection {
    param($dbList, [int]$action)
    foreach ($entry in $dbList) {
        if ($action -in @(1,3)) { [void](Download-Database -Database $entry) }
        if ($action -in @(2,3)) { Install-Database -Database $entry }
    }
}

if ($DbChoice -ge 0 -and $ActionChoice -ge 1) {
    if ($DbChoice -eq 0) { return }
    $selected = if ($DbChoice -eq 3) { $Databases } else { $Databases | Where-Object { $_.ID -eq $DbChoice } }
    Process-Selection -dbList $selected -action $ActionChoice
    return
}

do {
    Clear-Host
    Write-Host "===============================================" -ForegroundColor Cyan
    Write-Host "   SQL Database Download & Install Manager"     -ForegroundColor Cyan
    Write-Host "===============================================" -ForegroundColor Cyan
    foreach ($db in $Databases) { Write-Host "$($db.ID). $($db.Name)" }
    Write-Host "3. ALL DATABASES"
    Write-Host "0. Exit"
    Write-Host "-----------------------------------------------"

    $picked = Read-Host "Select a database to process (0-3)"
    if ($picked -eq '0') { break }
    if ($picked -notmatch '^[1-3]$') { Write-Host "Invalid selection." -ForegroundColor Red; Pause; continue }

    Write-Host "`nActions:`n1. Download Only`n2. Install (Restore) Only`n3. Both"
    $action = Read-Host "Select an action (1-3)"
    if ($action -notmatch '^[1-3]$') { Write-Host "Invalid action." -ForegroundColor Red; Pause; continue }

    $selected = if ($picked -eq '3') { $Databases } else { $Databases | Where-Object { $_.ID -eq [int]$picked } }
    Process-Selection -dbList $selected -action ([int]$action)
    Write-Host "`nOperation complete." -ForegroundColor Green
    Pause
} while ($true)
'@

# Encode the DB Script into Base64 so it can be safely injected into the VM configuration script
$EncodedDbScript = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($DbManagerScript))

# 5. Define the VM Internal Configuration Script
$CustomScript = @'
# 5a. Create the Student account and add to Administrators
$StudentUser = 'Student'
$StudentPass = 'Pa$$w0rd'
NET USER $StudentUser $StudentPass /ADD /Y
NET LOCALGROUP Administrators $StudentUser /ADD

# 5b. Create necessary class file directories
$LabPaths = @(
    "C:\Classfiles\",
    "C:\Classfiles\Labfiles\",
    "C:\Classfiles\Labfiles\Lab01\",
    "C:\Classfiles\Labfiles\Lab04\",
    "C:\Classfiles\Labfiles\Lab06\Starter\Setup\"
)
foreach ($Path in $LabPaths) {
    New-Item -Path $Path -ItemType Directory -Force | Out-Null
}

# 5c. Install SSMS 22
$WorkingDir  = "C:\Temp"
$installDir  = "C:\Classfiles"
$destination = "$installDir\vs_SSMS.exe"
$source      = "https://aka.ms/ssms/22/release/vs_SSMS.exe"

if (-not (Test-Path $WorkingDir)) { New-Item -ItemType Directory -Path $WorkingDir -Force | Out-Null }
Set-Location -Path $WorkingDir

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Write-Host "Downloading SSMS 22..."
Invoke-WebRequest -Uri $source -OutFile $destination -UseBasicParsing

Write-Host "Installing SSMS 22 silently..."
$installArgs = "--passive --includeRecommended --norestart --wait"
Start-Process -FilePath $destination -ArgumentList $installArgs -Wait -PassThru

# Wait for background VS installer processes to clear
$installerProcesses = @("vs_setup", "setup", "vs_installer")
do {
    $running = Get-Process -Name $installerProcesses -ErrorAction SilentlyContinue
    if ($running) { Start-Sleep -Seconds 5 }
} while ($running)

# Disable certificate revocation checks and optimize SSMS
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\WinTrust\Trust Providers\Software Publishing" /v State /t REG_DWORD /d 0x23c00 /f
$ngenPath = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe"
$ssmsPath = "C:\Program Files\Microsoft SQL Server Management Studio 22\Release\Common7\IDE\Ssms.exe"
Start-Process -FilePath $ngenPath -ArgumentList "install `"$ssmsPath`"" -Wait

# 5d. Configure SQL Server Security (Mixed Mode, sa, and Student sysadmin)
Write-Host "Configuring SQL Server Security..."
$regPath = "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQLServer"
if (Test-Path $regPath) {
    Set-ItemProperty -Path $regPath -Name "LoginMode" -Value 2
} else {
    $regPathFallback = "HKLM:\SOFTWARE\Microsoft\MSSQLServer\MSSQLServer"
    if (Test-Path $regPathFallback) { Set-ItemProperty -Path $regPathFallback -Name "LoginMode" -Value 2 }
}

Restart-Service -Name "MSSQLSERVER" -Force

$sqlCmd = "
ALTER LOGIN sa WITH PASSWORD = '$StudentPass';
ALTER LOGIN sa ENABLE;
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'$env:COMPUTERNAME\Student')
BEGIN
    CREATE LOGIN [$env:COMPUTERNAME\Student] FROM WINDOWS;
END
ALTER SERVER ROLE sysadmin ADD MEMBER [$env:COMPUTERNAME\Student];
"
$sqlFile = "C:\Temp\ConfigSecurity.sql"
$sqlCmd | Out-File -FilePath $sqlFile -Encoding UTF8
& sqlcmd.exe -E -C -i $sqlFile

# 5e. Deploy databases.ps1 and Execute it (Download and Restore)
# We do this LAST to ensure SQL Server is completely running and configured.
$DbScriptBytes = [System.Convert]::FromBase64String('%%BASE64_DBSCRIPT%%')
[System.IO.File]::WriteAllBytes('C:\Classfiles\databases.ps1', $DbScriptBytes)

Write-Host "Executing databases.ps1 to download and restore databases..."
& 'C:\Classfiles\databases.ps1' -DbChoice 3 -ActionChoice 3

Write-Output "Student environment configuration complete."
'@

# Inject the encoded database script into the execution payload
$CustomScript = $CustomScript -replace '%%BASE64_DBSCRIPT%%', $EncodedDbScript

# 6. Execute Run Command on the VM
Write-Host "Applying Run Command to configure Student accounts, lab files, databases, SSMS 22, and SQL Security..."
Write-Host "Note: This extension may take 30 minutes to complete. Please wait..."

Invoke-AzVMRunCommand `
    -ResourceGroupName $ResourceGroupName `
    -VMName $VMName `
    -CommandId "RunPowerShellScript" `
    -ScriptString $CustomScript

# ==============================================================================
# 7. Post-Provisioning Summary
# ==============================================================================

# Retrieve the assigned Public IP address from Azure
$PublicIP = (Get-AzPublicIpAddress -ResourceGroupName $ResourceGroupName -Name "LabPublicIP").IpAddress

# Calculate the duration
$StartTime = [datetime]::ParseExact($TimeStamp, "yyyyMMddHHmm", $null)
$EndTime   = Get-Date
$Duration  = $EndTime - $StartTime

Write-Host ""
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host "  ✅ LAB PROVISIONING COMPLETE" -ForegroundColor Green
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host "  VM Name      : $VMName"
Write-Host "  Public IP    : $PublicIP"
Write-Host "  RDP Command  : mstsc /v:$PublicIP"
Write-Host "--------------------------------------------------------------" -ForegroundColor DarkGray
Write-Host "  Start Time   : $($StartTime.ToString('MM/dd/yyyy hh:mm:ss tt'))"
Write-Host "  End Time     : $($EndTime.ToString('MM/dd/yyyy hh:mm:ss tt'))"
Write-Host "  Duration     : $($Duration.Minutes) minutes, $($Duration.Seconds) seconds"
Write-Host "==============================================================" -ForegroundColor Cyan
Write-Host ""
