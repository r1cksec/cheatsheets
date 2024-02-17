### Source
https://docs.leakix.net/docs/api/authentication

### Get subdomains
```
curl -s -H "api-key: <apiKey>" -H "accept: application/json" "https://leakix.net/api/subdomains/<domain>" 
```

### Get ports (mostly 80,443), subdomains, HTTP header, HTML tile, geolocation, asn, etc
```
curl -s -H "api-key: <apiKey>" -H "accept: application/json" "https://leakix.net/domain/<domain>"
```

### Collect information about multiple hosts
```
cat hosts.txt | xargs -I % sh -c 'echo %\\n; curl -s -H "api-key: <apiKey>" -H "accept: application/json" "https://leakix.net/host/%" > %.json ; cat %.json; sleep 5'
```

