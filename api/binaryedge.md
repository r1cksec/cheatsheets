### Source
https://docs.binaryedge.io/api-v2

### Return details about current subscription
```
curl "https://api.binaryedge.io/v2/user/subscription" -H "X-Key:<apiKey>"
```

### Return details about services running on host
```
curl "https://api.binaryedge.io/v2/query/ip/<ipAddress>" -H "X-Key:<apiKey>"
```

### List subdomains
```
curl "https://api.binaryedge.io/v2/query/domains/subdomain/<domain>" -H "X-Key:<apiKey>"
```

### Return known data breaches for email address
```
curl "https://api.binaryedge.io/v2/query/dataleaks/email/<email>" -H "X-Key:<apiKey>"
```

### List available data breaches
```
curl "https://api.binaryedge.io/v2/query/dataleaks/info" -H "X-Key:<apiKey>"
```

