### Source
https://www.onyphe.io/docs/getting-started

### Get subdomains, asn, ports etc
```
curl -H "Content-Type: application/json" -H "Authorization: bearer <apiKey>" "https://www.onyphe.io/api/v2/search/?q=domain:<domain>"
```

### Get domains that resolve to the given IP address
```
curl -H "Content-Type: application/json" -H "Authorization: bearer <apiKey>" "https://www.onyphe.io/api/v2/search/?q=category:resolver+ip:<ip>"
```

### Get posts, services, os, certificate, hostname, asn etc
```
curl -H "Content-Type: application/json" -H "Authorization: bearer <apiKey>" "https://www.onyphe.io/api/v2/search/?q=ip:<ip>"
```

