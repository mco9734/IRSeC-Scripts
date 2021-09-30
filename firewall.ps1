netsh advfirewall set allprofiles state on
(New-Object -ComObject HNetCfg.FwPolicy2).RestoreLocalFirewallDefaults()

New-NetFirewallRule -DisplayName "Port 135 TCP" -Direction Outbound -LocalPort 135 -Protocol TCP -Action Block
New-NetFirewallRule -DisplayName "Port 135 UDP" -Direction Outbound -LocalPort 135 -Protocol UDP -Action Block

New-NetFirewallRule -DisplayName "Port 137-139 TCP" -Direction Outbound -LocalPort 137-139 -Protocol TCP -Action Block
New-NetFirewallRule -DisplayName "Port 137-139 UDP" -Direction Outbound -LocalPort 137-139 -Protocol UDP -Action Block

New-NetFirewallRule -DisplayName "Port 445 TCP" -Direction Outbound -LocalPort 445 -Protocol TCP -Action Block

New-NetFirewallRule -DisplayName "Port 69 UDP" -Direction Outbound -LocalPort 69 -Protocol UDP -Action Block

New-NetFirewallRule -DisplayName "Port 161-162 UDP" -Direction Outbound -LocalPort 161-162 -Protocol UDP -Action Block

New-NetFirewallRule -DisplayName "Port 514 UDP" -Direction Outbound -LocalPort 514 -Protocol UDP -Action Block

New-NetFirewallRule -DisplayName "Port 6660-6669 TCP" -Direction Outbound -LocalPort 6660-6669 -Protocol TCP -Action Block