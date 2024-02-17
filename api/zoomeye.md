### Source
https://www.zoomeye.org/doc

### Get current subscription status
```
curl -X GET "https://api.zoomeye.org/resources-info" -H "API-KEY:<apiKey>"
```

### Send query to host endpoint
```
curl -s -X GET "https://api.zoomeye.org/host/search?query=<query>" -H "API-KEY:<apiKey>"
```

### Host Filters
```
app:<ProFTPD>
asn:<asn>
cidr:<ipRangeCidr>
country:<country>
hostname:<hostname>
ip:<ipv4>
os:<windows>
port:<port>
service:<http>
```

### Send query to web endpoint
```
curl -s -X GET "https://api.zoomeye.org/web/search?query=<query>" -H "API-KEY:<apiKey>"
```

### Web Filters
```
app:<wordpress>
country:<country>
header:<header>
ip:<ipv4>
keywords:<keyword>
title:<title>
```

