### Source
https://github.com/ropnop/kerbrute  

### Enumerate user
```
./kerbrute_linux_amd64 userenum <userlist>.txt -d <domain> -v
```

### Bruteforce passwords
```
./kerbrute_linux_amd64 passwordspray <userlist>.txt <password> -d <domain> --dc <domainControllerFqdn> -o <file>.txt -v
```

