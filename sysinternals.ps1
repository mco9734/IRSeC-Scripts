Invoke-WebRequest "https://live.sysinternals.com/Autoruns.exe" -OutFile "Autoruns.exe"
Invoke-WebRequest "https://live.sysinternals.com/Sysmon.exe" -Outfile "sysmon.exe"
Invoke-WebRequest "https://live.sysinternals.com/Procmon.exe" -Outfile "Procmon.exe"
Invoke-WebRequest "https://live.sysinternals.com/procexp.exe" -Outfile "procexp.exe"

.\sysmon.exe -i sysmonconfig.xml -accepteula

eventvwr.msc




