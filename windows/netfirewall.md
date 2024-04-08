### Disable firewall
```
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
```

### Allow specific tcp port for ingoing traffic
```
New-NetFirewallRule -DisplayName "<name>" -Direction Inbound -LocalPort <port> -Protocol TCP -Action Allow
```

### Block specific tcp port for ingoing traffic
```
New-NetFirewallRule -DisplayName "<name>" -Direction Inbound -LocalPort <port> -Protocol TCP -Action Block
```

### List firewall rule
```
Get-NetFirewallRule -DisplayName "<name>"
```

### Remove firewall rule
```
Remove-NetFirewallRule -DisplayName "<name>"
```

