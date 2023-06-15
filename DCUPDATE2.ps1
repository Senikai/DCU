Set-ExecutionPolicy Bypass -scope Process -Force
$ErrorActionPreference = “SilentlyContinue” 
Uninstall-package -name "Dell Command | Update" -allversions -force

start-process '.\DCU_Setup_4_8_0.exe' -ArgumentList '/s /v/qn' -wait

reg add HKLM\SOFTWARE\Dell\UpdateService\Clients\CommandUpdate\Preferences\CFG\ /v ShowSetupPopup /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Dell\UpdateService\Clients\CommandUpdate\Preferences\CFG\ /v DCUconfigured /t REG_DWORD /d 1 /f



$Test = Test-Path -Path "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Pathtype Leaf
If ($Test -eq 'True'){
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -updatesNotification=Disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -biosPassword="D35kt0p1!"'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -scheduleAction=DownloadInstallAndNotify'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -reboot=disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -scheduleWeekly=Tue,13:45'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -updatesNotification=Disable'-WindowStyle hidden -Wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -userConsent=disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -autoSuspendBitLocker=enable'-WindowStyle hidden -wait
Start-Process "C:\Program Files\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -silent -lockSettings=enable'-WindowStyle hidden -wait

Write-Output "Worked"
}
$Test2 = Test-Path -Path "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Pathtype Leaf
If ($Test2 -eq 'True') {
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -updatesNotification=Disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -biosPassword="D35kt0p1!"'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -scheduleAction=DownloadInstallAndNotify'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -reboot=disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -scheduleWeekly=Tue,13:45'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -updatesNotification=Disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -userConsent=disable'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -autoSuspendBitLocker=enable'-WindowStyle hidden -wait
Start-Process "C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" -Argumentlist '/configure -silent -lockSettings=enable'-WindowStyle hidden -wait

Write-Output "Worked 86"
}


powershell -NoProfile -NonInteractive -Command "Uninstall-Module DellBiosProvider"  -AllVersions -force

Install-PackageProvider Nuget -Force; 
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module DellBiosProvider -Force
Import-Module DellBIOSProvider
$BPW = Get-Item -Path "DellSmbios:\Security\IsAdminPasswordSet" | Select-Object -ExpandProperty CurrentValue
If ( $BPW -eq 'False') {
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!"
 write-output "Added" }