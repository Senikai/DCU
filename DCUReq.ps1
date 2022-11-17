if ((Get-WmiObject Win32_ComputerSystem).Manufacturer -eq "Dell Inc.") {
    Write-Output "Found it!"
    }


#String Equals Found it!