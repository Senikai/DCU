Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW2" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW3" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW4" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW5" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW6" -Force
Remove-ItemProperty HKLM:\SOFTWARE\WOW6432Node\ABC -Name "DCUBIOSPW7" -Force


#winget list --name "Dell"


#Dell SupportAssist                        
Winget uninstall --id "{425786D5-8047-4CB6-AE91-0EE67BD829F8}" -h         
#Dell Command | Update for Windows Universâ€¦ 
Winget uninstall --name Dell.CommandUpdate.Universal -h
#Dell SupportAssist OS Recovery Plugin forâ€¦
Winget uninstall --id "{dc44ee3f-d6c1-444d-a660-b0f1ac90b51d}" -h          
#Dell Digital Delivery Services             
Winget uninstall --id "{E530ABB7-9DCC-421B-B751-484375E8374A}" -h                             
#Dell SupportAssist for Home PCs            
Winget uninstall --id DellInc.DellSupportAssistforPCs_htrsf667h5â€ -h             
#Dell Digital Delivery                      
Winget uninstall --id DellInc.DellDigitalDelivery_htrsf667h5kn2 -h
#Dell Command | Update                      
Winget uninstall --id DellInc.DellCommandUpdate_htrsf667h5kn2 -h
#MyDell
Winget uninstall --id 9PN7T3JFPRZ6 -h
#AccuWeather for Dell                        
Winget uninstall --id 9WZDNCRFJCQ5 -h
#Dell Digital Delivery                       
Winget uninstall --id 9PPRLNT023WC -h
#Media Suite Essentials for Dell             
Winget uninstall --id 9NN8BSS5N72F -h
#Dell Customer Connect                       
Winget uninstall --id 9NF0GGQ5S6QX -h
#Dell Product Registration
Winget uninstall --id 9PL4GNMVS4WD -h
#Mobile Solution â€“ Dell Enterprise
Winget uninstall --id 9NBLGGH11HWM -h
#Dell Precision Optimizer                    
Winget uninstall --id 9N1QQJNSQMKT -h                 
#Dell NetReady                               
Winget uninstall --id 9NBLGGGZ5ZB1 -h                 
#Dell Universal Receiver Control Panel       
Winget uninstall --id 9PNBLWNZ0CV5 -h                 
#Dell CinemaColor                            
Winget uninstall --id 9NRBZ5ZFDV61 -h                 
#Dell Visor                                  
Winget uninstall --id 9N1C1P629DR9  -h                 
#Dell Display Manager                        
Winget uninstall --id 9PLNC7BX90D4 -h                
#Dell PremierColor                           
Winget uninstall --id 9N9PJGJG009k -h             
#Dell Liberty                                
Winget uninstall --id 9NBLGGH2W953 -h                 
#Dell Education Data Management Demo         
Winget uninstall --id 9NBLGGH4SDSQ -h

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