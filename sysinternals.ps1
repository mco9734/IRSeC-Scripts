Invoke-WebRequest "https://live.sysinternals.com/Autoruns.exe" -OutFile "Edge.exe"
Invoke-WebRequest "https://live.sysinternals.com/Sysmon.exe" -Outfile "sysmon.exe"
Invoke-WebRequest "https://live.sysinternals.com/Procmon.exe" -Outfile "Firefox.exe"
Invoke-WebRequest "https://live.sysinternals.com/procexp.exe" -Outfile "N0tepad.exe"

.\sysmon.exe -i sysmonconfig.xml -accepteula

eventvwr.msc




