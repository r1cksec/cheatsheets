### Source
https://app.validin.com/docs

### Get nameserver and A/AAAA record history
```
curl -s -H "Authorization: BEARER <apiKey>" "https://app.validin.com/api/axon/domain/dns/history/<domain>"
```

### Perform historical reverse IP lookup on single IP
```
curl -s -H "Authorization: BEARER <apiKey>" "https://app.validin.com/api/axon/ip/dns/history/<ip>"
```

### Perform historical reverse IP lookup on range
```
curl -s -H "Authorization: BEARER <apiKey>" "https://app.validin.com/api/axon/ip/dns/history/<ip>/<cidr>"
```

