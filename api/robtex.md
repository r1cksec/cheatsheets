### Source
https://www.robtex.com/api

### Get domains that resolve to the given IP address and geolocation
```
curl -s "https://freeapi.robtex.com/ipquery/<ip>"
curl -s "https://freeapi.robtex.com/pdns/reverse/<ip>"
curl -s "https://freeapi.robtex.com/ipquery/<ip>?key=<apiKey>"
```

### Get ip range of given ASN
```
curl -s "https://freeapi.robtex.com/asquery/<1234>"
```

### Get name- and mailserver
```
curl -s "https://freeapi.robtex.com/pdns/forward/<domain>"
```

