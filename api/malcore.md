### Source
https://docs.malcore.io

### Run scan for domain
```
curl -X POST https://api.malcore.io/api/domain -H "apiKey: <apiKey>" -H "X-No-Poll: true" --data "domain=<domain>"
```

### Run scan for URL
```
curl -X POST https://api.malcore.io/api/urlcheck -H "apiKey: <apiKey>" --data "url=https://<url>"
```

