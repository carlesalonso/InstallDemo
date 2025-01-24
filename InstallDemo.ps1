<#
.SYNOPSIS
    Script to install multiple applications using Windows Package Manager (winget).

.DESCRIPTION
    This script checks if winget is installed and then attempts to install a predefined list of applications.
    Applications are installed one by one using winget with automatic acceptance of source and package agreements.

.PARAMETER None
    This script does not accept parameters.

.NOTES
    Required Dependencies:
    - Windows Package Manager (winget)

    Required:
    - Open PowerShell as Administrator
    - Enable execution of local PowerShell scripts: Set-ExecutionPolicy RemoteSigned
    
    Applications to be installed:
    - Mozilla Firefox
    - Google Chrome
    - Visual Studio Code
    - Windows Terminal
    - 7zip

.EXAMPLE
    PS> .\Install-Applications.ps1

.OUTPUTS
    Console messages indicating installation progress and any errors encountered.

.LINKS
    https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies
    https://learn.microsoft.com/en-us/windows/package-manager/winget/

.NOTES
    Version:        2.0
    Author:         Carlos Alonso Martinez	
    Mail:           carlos.martinez@mataro.epiaedu.cat
    Creation Date:  19/01/2025
#>
# Array of applications to be installed
# You can consult the list of available applications 
# with the command: winget search
$apps = @(
    "Mozilla.Firefox"
    "Google.Chrome"
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "7zip.7zip"
)
# Test if executed as Administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as an Administrator"
    Read-Host -Prompt "Press Enter to exit"
    exit
}
# Test if winget is installed

try {
        winget --version
        
    }
catch {
        Write-Host "Winget not installed"
        Read-Host -Prompt "Press Enter to exit"
        exit
}


# Install applications

foreach ($app in $apps) {
   Write-Host "Installing $app"
        try {
            winget install --accept-source-agreements --accept-package-agreements $app
            
        }
        catch {
           Write-Host "Error installing $app"
        }
    }
