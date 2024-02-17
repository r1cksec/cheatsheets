### Source
https://hackertarget.com/reverse-analytics-search

### Get domains that use the same google analytics ID
```
curl -s "https://api.hackertarget.com/analyticslookup/?q=<UA-XXX>"
```

### Perform reverse IP lookup on single ip or range
```
curl -s "https://api.hackertarget.com/reverseiplookup/?q=<ipCidr>"
```

### Get domains that use the same DNS server 
```
curl -s "https://api.hackertarget.com/findshareddns/?q=<ipNameserver>"
```

### Get subdomains
```
curl -s "https://api.hackertarget.com/hostsearch/?q=<domain>"
```

### Get URL from website 
```
curl -s "https://api.hackertarget.com/pagelinks/?q=<domain>"
```

### Get HTTP header 
```
curl -s "https://api.hackertarget.com/httpheaders/?q=<domain>"
```

