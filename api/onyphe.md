### Source
https://www.onyphe.io/docs/getting-started

### Get subdomains, asn, ports etc
```
curl -H "Content-Type: application/json" -H "Authorization: bearer <apiKey>" -XGET "https://www.onyphe.io/api/v2/search/?q=domain:<domain>"
```

### Get hostnames for ip address
```
curl -H "Content-Type: application/json" -H "Authorization: bearer <apiKey>" -XGET "https://www.onyphe.io/api/v2/search/?q=category:resolver+ip:<ip>"
```

