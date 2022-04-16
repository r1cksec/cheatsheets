### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/wmiexec.py  

### Executes single command
```
impacket-wmiexec <domain>/<user>:<password>@<rhost> <command>
```

### Use hashes and launch semi interactive powershell
```
impacket-wmiexec -hashes :<ntlmHash> <domain>/<user>@<rhost>
```

### Opsec considerations - Windows Security Log Event IDs
```
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple
```

### Running processes
```
wininit.exe
└── services.exe
    └── svchost.exe
        └── wmiprvse.exe
            └── cmd.exe
                └── Conhost.exe
```

