### Source
https://app.validin.com/docs

### Get nameserver and A/AAAA record history
```
curl -s -H "Authorization: BEARER <apiKey>" "https://app.validin.com/api/axon/domain/dns/history/<domain>"
```

### Get domains that resolve(d) to the given IP address
```
curl -s -H "Authorization: BEARER <apiKey>" "https://app.validin.com/api/axon/ip/dns/history/<ip>"
```

