### Source
https://networksdb.io/api/docs

### Get information about current subscription
```
curl -sH "X-Api-Key: <apiKey>" https://networksdb.io/api/key
```

### Get ASN and organisation
```
curl -s -H "X-Api-Key: <apiKey>" "https://networksdb.io/api/org-search" -d search=<companyName>
```

### Get IP range from id returned by org search
```
curl -s -H "X-Api-Key: <apiKey>" "https://networksdb.io/api/org-networks" -d id=<id>
```

### Get geolocation of ip adress
```
curl -s -H "X-Api-Key: <apiKey>" https://networksdb.io/api/ip-geo -d ip=<ip>
```

