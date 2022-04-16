### Source
https://github.com/ShawnDEvans/smbmap  

### List mountable shares on remote host
```
smbmap -d <domain> -H <rhost>
```

### Check if user is admin and skip banner for file containing hosts
```
smbmap -d <domain> --host-file <file>.txt -u <user> --prompt --admin --no-banner
```

