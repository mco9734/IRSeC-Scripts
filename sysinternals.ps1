Invoke-WebRequest "https://live.sysinternals.com/Autoruns.exe" -OutFile "nothing.exe"
Invoke-WebRequest "https://live.sysinternals.com/Sysmon.exe" -Outfile "sysmon.exe"
Invoke-WebRequest "https://live.sysinternals.com/Procmon.exe" -Outfile "null.exe"
Invoke-WebRequest "https://live.sysinternals.com/procexp.exe" -Outfile "epic.exe"

Invoke-WebRequest https://github.com/olafhartong/sysmon-modular/archive/refs/heads/master.zip -OutFile "sysmon-modular-master.zip"
Expand-Archive ./"sysmon-modular-master.zip"
Remove-Item ./"sysmon-modular-master.zip"
Set-Location .\sysmon-modular-master
Set-Location .\sysmon-modular-master
. .\Merge-SysmonXml.ps1
Merge-AllSysmonXml -Path ( Get-ChildItem '[0-9]*\*.xml') -AsString | Out-File sysmonconfig.xml
Set-Location ..
Set-Location ..
Move-Item -Path .\sysmon-modular-master\sysmon-modular-master\sysmonconfig.xml -Destination .\

sysmon.exe -i sysmonconfig.xml -accepteula

eventvwr.msc




