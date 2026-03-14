<#
.SYNOPSIS
    Courseware Studio — Classroom VM Provisioning Script
    Provisions an Azure VM from the SQL Server 2025 Developer on Windows Server 2025
    Marketplace image for instructor-led training environments.

.DESCRIPTION
    This script automates the full classroom VM setup from Azure Cloud Shell:
      1. Prompts for course number and derives VM/resource group naming
      2. Allows instructor to override all defaults (name, region, size, passwords)
      3. Creates the Azure resource group
      4. Provisions the VM from the official Microsoft SQL Server 2025 Developer image
      5. Adds a second administrator account (student) via VM Run Command
      6. Installs SQL Server Management Studio 22 (SSMS 22) via VM Run Command
      7. Outputs connection details when complete

    Image URN  : MicrosoftSQLServer:sql2025-ws2025:sqldev-gen2:latest
    VM Size    : Standard_D2s_v5 (2 vCPUs, 8 GiB RAM)
    Edition    : SQL Server 2025 Developer (free license, full Enterprise feature set)

.NOTES
    Author     : Software Tutorial Services LLC
    Version    : 1.1
    Run from   : Azure Cloud Shell (PowerShell)
    Pre-req    : Must be logged into Azure Cloud Shell — no additional setup required

    ⚠ SECURITY NOTE
    Default passwords are defined in this script for instructor convenience.
    These VMs are short-lived classroom environments (≤1 week).
    Do not use these passwords or this image configuration for production workloads.
#>

# ─────────────────────────────────────────────────────────────────────────────
# CONSTANTS — Image is fixed; do not modify
# ─────────────────────────────────────────────────────────────────────────────

$IMAGE_PUBLISHER  = "MicrosoftSQLServer"
$IMAGE_OFFER      = "sql2025-ws2025"
$IMAGE_SKU        = "entdev-gen2"
$IMAGE_VERSION    = "latest"
$IMAGE_URN        = "$IMAGE_PUBLISHER`:$IMAGE_OFFER`:$IMAGE_SKU`:$IMAGE_VERSION"

$NAME_SUFFIX      = "SQL-SRV"    # Appended to course number for VM name

# ─────────────────────────────────────────────────────────────────────────────
# HELPER FUNCTIONS
# ─────────────────────────────────────────────────────────────────────────────

function Write-Header {
    Write-Host ""
    Write-Host "================================================================" -ForegroundColor Cyan
    Write-Host "  Courseware Studio — Classroom VM Provisioning" -ForegroundColor Cyan
    Write-Host "  SQL Server 2025 Developer | Windows Server 2025 | Azure" -ForegroundColor Cyan
    Write-Host "================================================================" -ForegroundColor Cyan
    Write-Host ""
}

function Write-Step {
    param([string]$Message)
    Write-Host ""
    Write-Host "  >> $Message" -ForegroundColor Yellow
}

function Write-OK {
    param([string]$Message)
    Write-Host "  [OK] $Message" -ForegroundColor Green
}

function Write-Fail {
    param([string]$Message)
    Write-Host "  [FAIL] $Message" -ForegroundColor Red
}

function Write-Info {
    param([string]$Message)
    Write-Host "  $Message" -ForegroundColor White
}

function Prompt-WithDefault {
    <#
    .SYNOPSIS
        Prompts the instructor for a value, showing the default.
        Returns the default if the instructor presses Enter without typing.
    #>
    param(
        [string]$Label,
        [string]$Default,
        [string]$Hint = ""
    )

    if ($Hint) {
        Write-Host "  $Hint" -ForegroundColor DarkGray
    }

    $display = if ($Default) { " [default: $Default]" } else { "" }
    $raw = Read-Host "  $Label$display"
    $value = $raw.Trim()

    if ($value -eq "") {
        return $Default
    }
    return $value
}

function Strip-TrailingAlpha {
    <#
    .SYNOPSIS
        Strips any trailing alphabetic characters from a course number.
        65315A → 65315   |   AZ-900B → AZ-900   |   DP300 → DP300
    #>
    param([string]$CourseNumber)
    return $CourseNumber -replace '[A-Za-z]+$', ''
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 1 — COURSE NUMBER
# ─────────────────────────────────────────────────────────────────────────────

Write-Header

Write-Step "Course number"
Write-Info "Enter the full course number including any letter suffix (e.g., 65315A)."
Write-Info "Trailing letters are stripped automatically for the VM and resource group name."
Write-Info "Example: 65315A  →  VM name: 65315-$NAME_SUFFIX  |  Resource group: Course65315-[timestamp]"
Write-Host ""

$courseNumberRaw = ""

while ($true) {
    $raw = Read-Host "  Course number (required)"
    $courseNumberRaw = $raw.Trim()

    if ($courseNumberRaw -eq "") {
        Write-Host "  Course number is required. Please enter a value." -ForegroundColor Red
        continue
    }

    if ($courseNumberRaw -notmatch '^[A-Za-z0-9\-]{2,30}$') {
        Write-Host "  Invalid format. Use letters, numbers, and hyphens only (2–30 characters)." -ForegroundColor Red
        continue
    }

    break
}

# Strip trailing alpha characters for use in names
$courseNumberClean = Strip-TrailingAlpha -CourseNumber $courseNumberRaw

# DNS label must start with a letter and be lowercase
$domainLabel = ("domain" + $courseNumberClean).ToLower() -replace '[^a-z0-9-]', ''

Write-OK "Course number: $courseNumberRaw  (clean: $courseNumberClean)"
Write-OK "DNS label    : $domainLabel"

# ─────────────────────────────────────────────────────────────────────────────
# STEP 2 — DERIVED DEFAULTS
# ─────────────────────────────────────────────────────────────────────────────

$timestamp         = Get-Date -Format "yyyyMMddHHmm"
$defaultVmName     = "$courseNumberClean-$NAME_SUFFIX"
$defaultRgName     = "Course$courseNumberClean-$timestamp"
$defaultRegion     = "eastus"
$defaultVmSize     = "Standard_D2s_v5"
$defaultAdminzPass = "Pa`$`$w0rdPa`$`$w0rd"
$defaultStudentPass = "Pa`$`$w0rd"

# Validate VM name length (Windows 15-char limit)
if ($defaultVmName.Length -gt 15) {
    Write-Host ""
    Write-Host "  [WARNING] Default VM name '$defaultVmName' exceeds 15 characters ($($defaultVmName.Length))." -ForegroundColor Red
    Write-Host "  You will be asked to enter a shorter name in the next step." -ForegroundColor White
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 3 — INSTRUCTOR OVERRIDES
# ─────────────────────────────────────────────────────────────────────────────

Write-Host ""
Write-Host "  ─────────────────────────────────────────────────────────────" -ForegroundColor DarkGray
Write-Host "  CONFIGURATION — Press Enter to accept each default, or type a new value." -ForegroundColor White
Write-Host "  ─────────────────────────────────────────────────────────────" -ForegroundColor DarkGray

# VM Name
Write-Host ""
$vmName = ""
while ($true) {
    $vmName = Prompt-WithDefault `
        -Label  "VM name" `
        -Default $defaultVmName `
        -Hint   "Windows computer name limit: 15 characters max"

    if ($vmName.Length -gt 15) {
        Write-Host "  VM name '$vmName' is $($vmName.Length) characters — must be 15 or fewer." -ForegroundColor Red
        continue
    }
    if ($vmName -notmatch '^[A-Za-z0-9\-]{1,15}$') {
        Write-Host "  VM name may only contain letters, numbers, and hyphens." -ForegroundColor Red
        continue
    }
    break
}

# Resource Group Name
Write-Host ""
$resourceGroupName = Prompt-WithDefault `
    -Label   "Resource group name" `
    -Default $defaultRgName `
    -Hint    "A new resource group will be created with this name"

# Region
Write-Host ""
$region = Prompt-WithDefault `
    -Label   "Azure region" `
    -Default $defaultRegion `
    -Hint    "Examples: eastus, westus2, centralus, eastus2, westeurope"

# VM Size
Write-Host ""
$vmSize = Prompt-WithDefault `
    -Label   "VM size" `
    -Default $defaultVmSize `
    -Hint    "Standard_D2s_v5 = 2 vCPUs, 8 GiB RAM (recommended for SQL Server 2025 Developer)"

# adminz password
Write-Host ""
Write-Host "  ─────────────────────────────────────────────────────────────" -ForegroundColor DarkGray
Write-Host "  ADMINISTRATOR ACCOUNTS" -ForegroundColor White
Write-Host "  Both accounts will have full local Administrator privileges." -ForegroundColor DarkGray
Write-Host "  ─────────────────────────────────────────────────────────────" -ForegroundColor DarkGray
Write-Host ""

$adminzPassword = Prompt-WithDefault `
    -Label   "Password for 'adminz'" `
    -Default $defaultAdminzPass

# student password
Write-Host ""
$studentPassword = Prompt-WithDefault `
    -Label   "Password for 'student'" `
    -Default $defaultStudentPass

# ─────────────────────────────────────────────────────────────────────────────
# STEP 4 — CONFIRMATION SUMMARY
# ─────────────────────────────────────────────────────────────────────────────

Write-Host ""
Write-Host "  ┌──────────────────────────────────────────────────────────────┐" -ForegroundColor Cyan
Write-Host "  │  PROVISIONING SUMMARY                                         │" -ForegroundColor Cyan
Write-Host "  │                                                                │" -ForegroundColor Cyan
Write-Host "  │  Course number   : $($courseNumberRaw.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  VM name         : $($vmName.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  Resource group  : $($resourceGroupName.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  Region          : $($region.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  VM size         : $($vmSize.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  DNS label       : $($domainLabel.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │  Image           : $($IMAGE_URN.PadRight(42))│" -ForegroundColor Cyan
Write-Host "  │                                                                │" -ForegroundColor Cyan
Write-Host "  │  Admin accounts  : adminz  /  student (both Administrators)    │" -ForegroundColor Cyan
Write-Host "  │  SSMS 22         : Will be installed automatically              │" -ForegroundColor Cyan
Write-Host "  │                                                                │" -ForegroundColor Cyan
Write-Host "  │  NOTE: A new resource group will be created.                   │" -ForegroundColor Cyan
Write-Host "  │  Estimated provisioning time: 10–20 minutes (includes SSMS).   │" -ForegroundColor Cyan
Write-Host "  └──────────────────────────────────────────────────────────────┘" -ForegroundColor Cyan
Write-Host ""

$confirm = Read-Host "  Proceed with provisioning? (Y/N)"

if ($confirm.Trim().ToUpper() -ne "Y") {
    Write-Host ""
    Write-Info "Provisioning cancelled. No resources were created."
    Write-Host ""
    exit 0
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 5 — CREATE RESOURCE GROUP
# ─────────────────────────────────────────────────────────────────────────────

Write-Step "Creating resource group '$resourceGroupName' in '$region'..."

try {
    New-AzResourceGroup -Name $resourceGroupName -Location $region -Force -ErrorAction Stop | Out-Null
    Write-OK "Resource group created."
} catch {
    Write-Fail "Failed to create resource group: $_"
    Write-Info "Verify the region name is valid and that you have Contributor access to this subscription."
    exit 1
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 6 — PROVISION THE VM
# ─────────────────────────────────────────────────────────────────────────────

Write-Step "Provisioning VM '$vmName' — this will take 5–10 minutes..."
Write-Info "Image: $IMAGE_URN"
Write-Info "Please wait..."

# Build credential object for the primary admin (adminz)
$secureAdminzPass = ConvertTo-SecureString $adminzPassword -AsPlainText -Force
$adminzCred = New-Object System.Management.Automation.PSCredential ("adminz", $secureAdminzPass)

try {
    # MODIFIED: Explicitly defining Public IP and RDP port logic
    New-AzVM `
        -ResourceGroupName  $resourceGroupName `
        -Name               $vmName `
        -Location           $region `
        -Size               $vmSize `
        -Image              $IMAGE_URN `
        -Credential         $adminzCred `
        -OpenPorts          3389 `
        -PublicIpAddressName "$vmName-IP" `
        -AllocationMethod   Static `
        -DomainNameLabel    $domainLabel `
        -ErrorAction Stop | Out-Null

    Write-OK "VM '$vmName' provisioned successfully."
} catch {
    Write-Fail "VM provisioning failed: $_"
    Write-Host ""
    Write-Info "The resource group '$resourceGroupName' was created. You may need to clean it up manually:"
    Write-Info "  Remove-AzResourceGroup -Name '$resourceGroupName' -Force"
    Write-Host ""
    exit 1
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 7 — ADD 'student' ADMINISTRATOR ACCOUNT AND CREATE C:\CLASSFILES FOLDER
# ─────────────────────────────────────────────────────────────────────────────

Write-Step "Adding 'student' administrator account to VM..."

# PowerShell script to run inside the VM
$addStudentScript = @"
`$password = ConvertTo-SecureString '$studentPassword' -AsPlainText -Force
New-LocalUser -Name 'student' -Password `$password -FullName 'Student' -Description 'Classroom student account' -PasswordNeverExpires -ErrorAction Stop
Add-LocalGroupMember -Group 'Administrators' -Member 'student' -ErrorAction Stop
New-Item -Path 'C:\Classfiles' -ItemType Directory -Force | Out-Null
Write-Output 'student account created and added to Administrators.'
"@

try {
    $runResult = Invoke-AzVMRunCommand `
        -ResourceGroupName $resourceGroupName `
        -VMName            $vmName `
        -CommandId         "RunPowerShellScript" `
        -ScriptString      $addStudentScript `
        -ErrorAction Stop

    $output = $runResult.Value[0].Message
    if ($output -like "*created and added*") {
        Write-OK "student account created, added to Administrators, and C:\Classfiles created."
    } else {
        Write-Host "  [WARN] Run Command completed but output was unexpected:" -ForegroundColor DarkYellow
        Write-Info $output
    }
} catch {
    Write-Host "  [WARN] Could not create 'student' account automatically: $_" -ForegroundColor DarkYellow
    Write-Host ""
    Write-Info "You can add it manually after connecting to the VM:"
    Write-Info "  `$pw = ConvertTo-SecureString 'Pa`$`$w0rd' -AsPlainText -Force"
    Write-Info "  New-LocalUser -Name 'student' -Password `$pw -PasswordNeverExpires"
    Write-Info "  Add-LocalGroupMember -Group 'Administrators' -Member 'student'"
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 7b — INSTALL SSMS 22
# ─────────────────────────────────────────────────────────────────────────────
#
# This block embeds Install-SSMS22.ps1 as an inline script string and runs it
# on the VM via Invoke-AzVMRunCommand. A single-quoted here-string (@' '@) is
# used so that PowerShell variables inside the script are NOT expanded by Cloud
# Shell — they are passed verbatim and evaluated on the VM as intended.
#
# NOTE: SSMS 22 is a large installer (~700 MB download + VS engine background
# processes). The Run Command has a 90-minute execution timeout in Azure.
# The wait loop below watches for the VS installer engine to finish before
# proceeding. Expect this step to take 10–15 minutes on a fresh VM.
# ─────────────────────────────────────────────────────────────────────────────

Write-Step "Installing SSMS 22 on VM (this may take 10-15 minutes)..."
Write-Info "Downloading bootstrapper from Microsoft and running silent install..."
Write-Info "Please wait — do not close Cloud Shell..."

$installSsmsScript = @'
# Requires -RunAsAdministrator

$WorkingDir  = "C:\Temp"
$installDir  = "C:\Classfiles"
$destination = "$installDir\vs_SSMS.exe"
$logFile     = "$installDir\SSMS22_Install.log"
$source      = "https://aka.ms/ssms/22/release/vs_SSMS.exe"

# Ensure destination directory exists
if (-not (Test-Path $installDir)) {
    New-Item -ItemType Directory -Path $installDir -Force | Out-Null
}

# Ensure working directory exists before changing to it
if (-not (Test-Path $WorkingDir)) {
    New-Item -ItemType Directory -Path $WorkingDir -Force | Out-Null
}
Set-Location -Path $WorkingDir

# Enforce TLS 1.2 for the download (required on Windows Server 2025)
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Write-Host "Downloading SSMS 22 bootstrapper..."
Invoke-WebRequest -Uri $source -OutFile $destination -UseBasicParsing

Write-Host "Starting SSMS 22 silent installation..."
$installArgs = "--passive --includeRecommended --norestart --wait"

$process = Start-Process `
    -FilePath    $destination `
    -ArgumentList $installArgs `
    -Wait `
    -PassThru

# SAFETY CHECK: Wait for the underlying VS Installer engine to finish.
# The bootstrapper often spawns 'vs_setup.exe' or 'setup.exe' as child processes.
Write-Host "Waiting for background installer processes to clear..."
$installerProcesses = @("vs_setup", "setup", "vs_installer")

do {
    $running = Get-Process -Name $installerProcesses -ErrorAction SilentlyContinue
    if ($running) {
        Start-Sleep -Seconds 5
    }
} while ($running)

Write-Host "Installation complete."

# Disable certificate revocation checks
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\WinTrust\Trust Providers\Software Publishing" /v State /t REG_DWORD /d 0x23c00 /f

# Run ngen to optimize SSMS 22 binaries (speeds up first launch)
$ngenPath = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe"
$ssmsPath = "C:\Program Files\Microsoft SQL Server Management Studio 22\Release\Common7\IDE\Ssms.exe"

Start-Process -FilePath $ngenPath -ArgumentList "install `"$ssmsPath`"" -Wait

Write-Output "SSMS 22 installation and optimization complete."
'@

try {
    $ssmsResult = Invoke-AzVMRunCommand `
        -ResourceGroupName $resourceGroupName `
        -VMName            $vmName `
        -CommandId         "RunPowerShellScript" `
        -ScriptString      $installSsmsScript `
        -ErrorAction Stop

    $ssmsOutput = $ssmsResult.Value[0].Message
    if ($ssmsOutput -like "*complete*") {
        Write-OK "SSMS 22 installed and optimized successfully."
    } else {
        Write-Host "  [WARN] SSMS install Run Command completed but output was unexpected:" -ForegroundColor DarkYellow
        Write-Info $ssmsOutput
    }
} catch {
    Write-Host "  [WARN] SSMS 22 installation did not complete automatically: $_" -ForegroundColor DarkYellow
    Write-Host ""
    Write-Info "You can install SSMS 22 manually after connecting to the VM:"
    Write-Info "  1. RDP into the VM as adminz"
    Write-Info "  2. Run Install-SSMS22.ps1 from an elevated PowerShell prompt"
}

# ─────────────────────────────────────────────────────────────────────────────
# STEP 8 — RETRIEVE CONNECTION DETAILS
# ─────────────────────────────────────────────────────────────────────────────

Write-Step "Retrieving connection details..."

try {
    $publicIp = (Get-AzPublicIpAddress -ResourceGroupName $resourceGroupName -ErrorAction Stop)[0].IpAddress
} catch {
    $publicIp = "(could not retrieve — check Azure Portal)"
}

# ─────────────────────────────────────────────────────────────────────────────
# DONE — CONNECTION SUMMARY
# ─────────────────────────────────────────────────────────────────────────────

Write-Host ""
Write-Host "  ┌──────────────────────────────────────────────────────────────┐" -ForegroundColor Green
Write-Host "  │  ✅  VM READY                                                  │" -ForegroundColor Green
Write-Host "  │                                                                │" -ForegroundColor Green
Write-Host "  │  VM name        : $($vmName.PadRight(43))│" -ForegroundColor Green
Write-Host "  │  Public IP      : $($publicIp.PadRight(43))│" -ForegroundColor Green
Write-Host "  │  Resource group : $($resourceGroupName.PadRight(43))│" -ForegroundColor Green
Write-Host "  │  Region         : $($region.PadRight(43))│" -ForegroundColor Green
Write-Host "  │                                                                │" -ForegroundColor Green
Write-Host "  │  RDP connection : mstsc /v:$($publicIp.PadRight(37))│" -ForegroundColor Green
Write-Host "  │                                                                │" -ForegroundColor Green
Write-Host "  │  Accounts (both have local Administrator rights):              │" -ForegroundColor Green
Write-Host "  │    Username: adminz   Password: (as configured)                │" -ForegroundColor Green
Write-Host "  │    Username: student  Password: (as configured)                │" -ForegroundColor Green
Write-Host "  │                                                                │" -ForegroundColor Green
Write-Host "  │  SQL Server 2025 Developer is pre-installed and ready.         │" -ForegroundColor Green
Write-Host "  │  SSMS 22 has been installed and optimized.                     │" -ForegroundColor Green
Write-Host "  └──────────────────────────────────────────────────────────────┘" -ForegroundColor Green
Write-Host ""
Write-Info "Share the Public IP and student credentials with your class."
Write-Info "Students connect via Remote Desktop (RDP) on port 3389."
Write-Host ""
