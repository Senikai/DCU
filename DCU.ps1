#OutWithTheDellBloat
Set-ExecutionPolicy Bypass -scope Process -Force
$ErrorActionPreference = “SilentlyContinue”

#winget list --name "Dell"


$ResolveWingetPath = Resolve-Path "C:\Program Files\WindowsApps\Microsoft.DesktopAppInstaller_*_x64__8wekyb3d8bbwe\winget.exe"
    if ($ResolveWingetPath){
           $WingetPath = $ResolveWingetPath[-1].Path
    }

$Wingetpath = Split-Path -Path $WingetPath -Parent
cd $wingetpath
#Dell SupportAssist                        
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id "{425786D5-8047-4CB6-AE91-0EE67BD829F8}" -h         
#Dell Command | Update for Windows Universâ€¦ 
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --name Dell.CommandUpdate.Universal -h
#Dell SupportAssist OS Recovery Plugin forâ€¦
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id "{dc44ee3f-d6c1-444d-a660-b0f1ac90b51d}" -h          
#Dell Digital Delivery Services             
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id "{E530ABB7-9DCC-421B-B751-484375E8374A}" -h                             
#Dell SupportAssist for Home PCs            
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id DellInc.DellSupportAssistforPCs_htrsf667h5â€ -h             
#Dell Digital Delivery                      
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id DellInc.DellDigitalDelivery_htrsf667h5kn2 -h
#Dell Command | Update                      
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id DellInc.DellCommandUpdate_htrsf667h5kn2 -h
#MyDell
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9PN7T3JFPRZ6 -h
#AccuWeather for Dell                        
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9WZDNCRFJCQ5 -h
#Dell Digital Delivery                       
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9PPRLNT023WC -h
#Media Suite Essentials for Dell             
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NN8BSS5N72F -h
#Dell Customer Connect                       
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NF0GGQ5S6QX -h
#Dell Product Registration
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9PL4GNMVS4WD -h
#Mobile Solution â€“ Dell Enterprise
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NBLGGH11HWM -h
#Dell Precision Optimizer                    
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9N1QQJNSQMKT -h                 
#Dell NetReady                               
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NBLGGGZ5ZB1 -h                 
#Dell Universal Receiver Control Panel       
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9PNBLWNZ0CV5 -h                 
#Dell CinemaColor                            
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NRBZ5ZFDV61 -h                 
#Dell Visor                                  
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9N1C1P629DR9  -h                 
#Dell Display Manager                        
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9PLNC7BX90D4 -h                
#Dell PremierColor                           
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9N9PJGJG009k -h             
#Dell Liberty                                
.\winget.exe--accept-source-agreements --accept-package-agreements  uninstall --id 9NBLGGH2W953 -h                 
#Dell Education Data Management Demo         
.\winget.exe--accept-source-agreements --accept-package-agreements uninstall --id 9NBLGGH4SDSQ -h

winget source reset msstore
Get-AppxPackage DellInc.DellDigitalDelivery | Remove-AppxPackage -Allusers
Get-AppxPackage Dell.CommandUpdate.Universal | Remove-AppxPackage -AllUsers
Get-AppxPackage DellInc.DellSupportAssistforPCs | Remove-AppxPackage -AllUsers

uninstall-Package -name "ExpressConnect Drivers & Services" -allversions -force
uninstall-Package -name "Dell Optimizer service" -allversions -force
uninstall-Package -name "DellOptimizerui" -allversions -force
Uninstall-package -name "Dell SupportAssist" -allversions -force
Uninstall-package -name "SupportAssist Recovery Agent" -allversions -force
Uninstall-package -name "Dell SupportAssist OS Recovery Plugin for Dell Update" -allversions -force
Uninstall-package -name "Dell SupportAssist Remediation" -allversions -force
Uninstall-package -name "Dell Command | Update" -allversions -force
Uninstall-package -name "Dell Digital Delivery" -allversions -force
Uninstall-package -name "Dell COmmand | Configure" -allversions -force
remove-item -path "HKLM:\SOFTWARE\Dell Inc" -Recurse -force
remove-item -path "HKLM:\SOFTWARE\Dell Computer Corporation" -Recurse -force
remove-item -path "HKLM:\SOFTWARE\Dell" -Recurse -force
remove-item -path "HKLM:\SOFTWARE\WOW6432Node\Dell" -Recurse -force
remove-item -path "HKLM:\SOFTWARE\WOW6432Node\Dell Computer Corporation" -recurse -force

$BIOSPassword = "D35kt0p1!"


Invoke-Command -ScriptBlock { Start-Process .\Dell-Command-Update-Windows-Universal-Application_DT6YC_WIN_4.6.0_A00.exe -ArgumentList /s -Wait -NoNewWindow }

reg add HKLM\SOFTWARE\Dell\UpdateService\Clients\CommandUpdate\Preferences\CFG\ /v ShowSetupPopup /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Dell\UpdateService\Clients\CommandUpdate\Preferences\CFG\ /v DCUconfigured /t REG_DWORD /d 1 /f
Set-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW7" -Value "Added!!" -Type String -Force


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
Else {
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
 Else {
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!" -Password "T3chn1c@l"
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!" -Password "D35kt0p1"
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!" -Password "Technical"
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!" -Password "Desktop1!"
Set-Item -Path DellSmbios:\Security\AdminPassword "D35kt0p1!" -Password "D35kt0p1!"
write-output "changed" }
