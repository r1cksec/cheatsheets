### Source
https://urlscan.io/docs/api

### Get root- and subdomains
```
curl -s "https://urlscan.io/api/v1/search/?q=domain:<company>*" -H "API-Key: <apiKey>"
```

### Find systems that host a given file
```
curl -s "https://urlscan.io/api/v1/search/?q=filename:<fileName.extension>" -H "API-Key: <apiKey>"
```

