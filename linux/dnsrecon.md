### Source
https://github.com/darkoperator/dnsrecon  

### D domain, D dictionary, t type standard, gb google bing
```
dnsrecon -d <domain> -D <file> -t <std> -gb
```

### Enumerate subdomains
```
dnsrecon -t <brt> -d <domain> 
```

### Zonewalking
```
dnsrecon -d <domain> -t zonewalk
```

### Zone transfer
```
dnsrecon -d <domain> -a -n <dnsIp>
```

### Reverse lookup for IP range
```
dnsrecon -r <192.168.0.0-192.168.0.255>
```

### Top level domain enumeration
```
dnsrecon -d <domain> -t tld
```

