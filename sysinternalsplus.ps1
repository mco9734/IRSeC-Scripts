Set-Location $HOME\Pictures

Invoke-WebRequest -o .\ar.zip "https://download.sysinternals.com/files/Autoruns.zip"
Invoke-WebRequest -o .\tv.zip "https://download.sysinternals.com/files/TCPView.zip"
Invoke-WebRequest -o .\sm.zip "https://download.sysinternals.com/files/Sysmon.zip"
Invoke-WebRequest -o .\pe.zip "https://download.sysinternals.com/files/ProcessExplorer.zip"
Invoke-WebRequest -o .\pm.zip "https://download.sysinternals.com/files/ProcessMonitor.zip"

Invoke-WebRequest -o .\gawr.exe “https://1.na.dl.wireshark.org/win64/Wireshark-win64-3.2.11.exe”
Invoke-WebRequest -o .\plus.zip “https://explorerplusplus.com/software/explorer++_1.3.5_x64.zip”
Invoke-WebRequest -o .\webint.exe “http://dl.google.com/chrome/install/375.126/chrome_installer.exe”