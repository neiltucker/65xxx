# Classroom VM Provisioning Guide
## SQL Server 2025 Developer — Azure Cloud Shell Setup

**For:** Instructors  
**Script:** `New-ClassroomVM.ps1`  
**Run from:** Azure Cloud Shell (PowerShell mode)

---

## Overview

This script provisions a classroom lab VM directly from Azure Cloud Shell. It creates a new Azure resource group, deploys a VM from Microsoft's pre-built SQL Server 2025 Developer image, and configures two administrator accounts ready for student use — all in a single guided session.

**Estimated time:** 5–10 minutes from running the script to a ready VM.

| Setting | Default Value |
|---|---|
| Image | SQL Server 2025 Developer on Windows Server 2025 |
| VM size | Standard_D2s_v5 (2 vCPUs, 8 GiB RAM) |
| Region | East US (`eastus`) |
| Admin account | `adminz` |
| Student account | `student` |
| RDP port | 3389 (opened automatically) |

> **Why Developer edition?** SQL Server Developer edition includes all Enterprise features
> at no licensing cost, making it ideal for classroom environments where VMs are used
> for one week or less.

---

## Prerequisites

You need:

- An **Azure account** with permission to create resource groups and VMs
  (Contributor role or higher on your subscription)
- Access to **Azure Cloud Shell** — no local software installation required

You do **not** need:
- Az PowerShell installed locally
- An existing resource group
- Any pre-existing Azure infrastructure

---

## Step-by-Step Instructions

### Step 1 — Open Azure Cloud Shell

1. Go to [https://portal.azure.com](https://portal.azure.com) and sign in
2. Click the **Cloud Shell** icon in the top toolbar (looks like `>_`)
3. If prompted, select **PowerShell** (not Bash)
4. If this is your first time, Azure will ask you to create a storage account — accept the defaults

---

### Step 2 — Upload the script

In the Cloud Shell toolbar, click the **Upload/Download files** button (📁 icon) and upload `New-ClassroomVM.ps1`.

The file will land in your Cloud Shell home directory (`~/`).

Alternatively, if the script is hosted at a URL, download it directly:

```powershell
Invoke-WebRequest -Uri "https://your-share-url/New-ClassroomVM.ps1" -OutFile "~/New-ClassroomVM.ps1"
```

---

### Step 3 — Run the script

```powershell
./New-ClassroomVM.ps1
```

---

### Step 4 — Follow the prompts

The script will walk you through each setting. **Press Enter to accept the default**, or type a new value.

#### Course number (required — no default)

```
  Enter the full course number including any letter suffix (e.g., 65315A).
  Trailing letters are stripped automatically for the VM and resource group name.
  Example: 65315A  →  VM name: 65315-SQL-SRV  |  Resource group: Course65315-202503071423

  Course number (required): 65315A
```

#### VM name

```
  VM name (Windows computer name — 15 character max)
  VM name [default: 65315-SQL-SRV]:
```

Press Enter to accept, or type a custom name (letters, numbers, hyphens; 15 chars max).

#### Resource group name

```
  Resource group name [default: Course65315-202503071423]:
```

A **new** resource group is created with this name. The timestamp in the default ensures uniqueness if you run the script multiple times for different sessions.

#### Region

```
  Azure region [default: eastus]:
```

Use `eastus` for most US-based classrooms. Other options: `westus2`, `centralus`, `eastus2`, `westeurope`.

#### VM size

```
  VM size [default: Standard_D2s_v5]:
```

`Standard_D2s_v5` (2 vCPUs, 8 GiB RAM) is the recommended size for SQL Server 2025 Developer. Only change this if your lab requires additional resources.

#### Administrator passwords

```
  Password for 'adminz' [default: Pa$$w0rdPa$$w0rd]:
  Password for 'student' [default: Pa$$w0rd]:
```

Press Enter to use the defaults, or type new passwords. Both accounts will have full local Administrator rights on the VM.

---

### Step 5 — Confirm and wait

After reviewing the summary, type `Y` to begin provisioning:

```
  ┌──────────────────────────────────────────────────────────────┐
  │  PROVISIONING SUMMARY                                         │
  │                                                                │
  │  Course number   : 65315A                                      │
  │  VM name         : 65315-SQL-SRV                               │
  │  Resource group  : Course65315-202503071423                    │
  │  Region          : eastus                                      │
  │  VM size         : Standard_D2s_v5                             │
  │  Image           : MicrosoftSQLServer:sql2025-ws2025:...       │
  │                                                                │
  │  Admin accounts  : adminz  /  student (both Administrators)    │
  │                                                                │
  │  NOTE: A new resource group will be created.                   │
  │  Estimated provisioning time: 5–10 minutes.                    │
  └──────────────────────────────────────────────────────────────┘

  Proceed with provisioning? (Y/N): Y
```

---

### Step 6 — Note the connection details

When complete, the script displays everything students need to connect:

```
  ┌──────────────────────────────────────────────────────────────┐
  │  ✅  VM READY                                                  │
  │                                                                │
  │  VM name        : 65315-SQL-SRV                                │
  │  Public IP      : 52.xxx.xxx.xxx                               │
  │  Resource group : Course65315-202503071423                     │
  │                                                                │
  │  RDP connection : mstsc /v:52.xxx.xxx.xxx                      │
  │                                                                │
  │  Accounts (both have local Administrator rights):              │
  │    Username: adminz   Password: (as configured)                │
  │    Username: student  Password: (as configured)                │
  └──────────────────────────────────────────────────────────────┘
```

Share the **Public IP address** and the **student** credentials with your class.

---

## Student Connection Instructions

Instruct students to connect via **Remote Desktop (RDP)**:

**Windows:**
1. Press `Win + R`, type `mstsc`, press Enter
2. In the Computer field, enter the IP address provided by the instructor
3. Click Connect, enter username `student` and the password provided

**macOS:**
1. Install [Microsoft Remote Desktop](https://apps.apple.com/app/microsoft-remote-desktop/id1295203466) from the App Store
2. Add a new PC using the IP address provided
3. Enter credentials when prompted

---

## Course Number Format

| Input | VM Name | Resource Group |
|---|---|---|
| `65315A` | `65315-SQL-SRV` | `Course65315-[timestamp]` |
| `65315` | `65315-SQL-SRV` | `Course65315-[timestamp]` |
| `AZ-900B` | `AZ-900-SQL-SRV` | `CourseAZ-900-[timestamp]` |
| `DP300` | `DP300-SQL-SRV` | `CourseDP300-[timestamp]` |

> ⚠️ The VM name (course number + `-SQL-SRV`) must not exceed 15 characters —
> a Windows computer name limit. If your course number is long, enter a shorter
> custom VM name when prompted.

---
## After Logging In
Verify that SQL Server 2025 Developer Edition is installed and running.
Verify that SQL Server Management Studio is installed.  If not, download and configure SSMS.
Verify that you have Internet connectivity

---

## Cleaning Up After Class

To avoid ongoing Azure charges, delete the resource group when the course is complete:

```powershell
Remove-AzResourceGroup -Name "Course65315-202503071423" -Force
```

Or in the Azure Portal: **Resource Groups** → select the group → **Delete resource group**.

> Deleting the resource group removes the VM, disk, network interface, public IP,
> and all other associated resources in one operation.

---

## Troubleshooting

### "VM provisioning failed" error
- Verify your Azure subscription has quota for `Standard_D2s_v5` in the selected region
- Try a different region (e.g., `eastus2` or `westus2`) if quota is exhausted
- Confirm your account has Contributor access to the subscription

### "student account" warning after provisioning
If the Run Command step fails, connect to the VM as `adminz` and run manually:
```powershell
$pw = ConvertTo-SecureString 'Pa$$w0rd' -AsPlainText -Force
New-LocalUser -Name 'student' -Password $pw -PasswordNeverExpires
Add-LocalGroupMember -Group 'Administrators' -Member 'student'
```

### Cloud Shell disconnects during provisioning
Cloud Shell sessions time out after 20 minutes of inactivity. If this happens,
check the Azure Portal to see if the VM was created — provisioning continues
in Azure even if the Cloud Shell session drops. If the VM exists, just run
the student account creation step manually (see above).

### "You must accept the Marketplace terms" error
Run this once in Cloud Shell before using the script:
```powershell
Get-AzMarketplaceTerms -Publisher "MicrosoftSQLServer" -Product "sql2025-ws2025" -Name "sqldev-gen2" | Set-AzMarketplaceTerms -Accept
```

---

*Script version 1.0 | Software Tutorial Services LLC | coursewarestudio.ai*
