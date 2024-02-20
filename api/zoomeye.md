### Source
https://www.zoomeye.org/doc

### Get current subscription status
```
curl -s -X GET "https://api.zoomeye.org/resources-info" -H "API-KEY:<apiKey>"
```

### Search for associated domain names
```
curl -s -X GET "https://api.zoomeye.org/domain/search?q=<domain>" -H "API-KEY:<apiKey>
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
city:<city>
country:<country>
device:<deviceType> 
hostname:<hostname>
ip:<ipv4>
os:<windows>
port:<port>
service:<http>
ver:<version>
```

### Send query to web endpoint
```
curl -s -X GET "https://api.zoomeye.org/web/search?query=<query>" -H "API-KEY:<apiKey>"
```

### Web Filters
```
app:<wordpress>
city:<city>
country:<country>
desc:<description>
header:<header>
ip:<ipv4>
keywords:<keyword>
site:<site>
title:<title>
```

