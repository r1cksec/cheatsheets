### Source
https://search.censys.io/api
https://search.censys.io/search/definitions

### Return details about current subscription
```
curl -s "https://search.censys.io/api/v1/account" -H "accept: application/json" -H "Authorization: Basic <apiKey>"
```

### Get subdomains, ports, vendors, asn, geolocation, etc of given domain
```
curl -s "https://search.censys.io/api/v2/hosts/search?per_page=100&q=dns.names:<domain>" -H "Accept: application/json" -H "Authorization: Basic <apiKey>"
```

### Get ports, vendors, asn, geolocation, etc of hosts containing a given keyword inside html title
```
curl -s "https://search.censys.io/api/v2/hosts/search?per_page=100&q=services.http.response.html_title:<title>" -H "Accept: application/json" -H "Authorization: Basic <apiKey>"
```

### Get ports, vendors, asn, geolocation, etc of hosts belonging to given ASN
```
curl -s "https://search.censys.io/api/v2/hosts/search?per_page=100&q=autonomous_system.asn:<number>" -H "Accept: application/json" -H "Authorization: Basic <apiKey>"
```

### Collect information about multiple hosts
```
cat cidrRanges.txt | xargs -I % sh -c 'echo %\\n; curl -s "https://search.censys.io/api/v2/hosts/search?per_page=100&q=ip:{'%'}" -H "accept: application/json" -H "Authorization: Basic <apiKey>" > $(echo %|tr "/" "_").json ; sleep 3'
```

### Definitions
```
services.port
services.http.response.headers 
services.http.response.html_title 
services.software.product
```

