### Source
https://developer.shodan.io/api

### Return details about current subscription
```
curl -s "https://api.shodan.io/account/profile?key=<apiKey>"
```

### Get rootdomains and subdomains of given company
```
curl -s "https://api.shodan.io/shodan/host/search?key=<apiKey>&query=org:<company>" | jq ".matches[] | .domains, .hostnames" | grep -v "\[" | awk -F '"' '{print $2}' | sort -u
```

### Get information about hosts that contains the given html title
```
curl -s "https://api.shodan.io/shodan/host/search?key=<apiKey>&query=http.title:<title>" | jq ".matches[] | .domains, .hostnames" /tmp/test | grep -v "\[" | awk -F '"' '{print $2}' | sort -u
```

### Get open ports, certificates, asn, html title and source code, geolocation, etc
```
curl -s "https://api.shodan.io/shodan/host/<ip>?key=<apiKey>"
```

### Collect information about multiple hosts
```
cat cidrRanges.txt | xargs -I % sh -c 'echo %\\n; curl -s "https://api.shodan.io/shodan/host/search?key=<apiKey>&query=net:%" > $(echo %|tr "/" "_").json ; sleep 3'
```

### Filters
```
country:<country>
http.title:<title>
http.html:<keyword>
net:<networkCidr>
org:<company>
port:<port>
product:<software>
isp:<internetServiceProvider>
```

