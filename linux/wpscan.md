### Source
https://github.com/wpscanteam/wpscan  

### Scan for vulnerable themes, timthumbs, user, all plugins
```
wpscan -e vt,tt,u,ap --disable-tls-checks --no-banner --url http://<rhost>
```

### Bruteforce login
```
wpscan --passwords <file>.txt -U <user> --url <rhost>
```

