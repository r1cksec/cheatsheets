### Resolve domain using specific DNS server and TCP
```
dig +tcp @<dnsServer> <domain>
```

### Get nameserver
```
dig +short NS <domain>
```

### Reverse search (rDNS)
```
dig -x <ip> +short
```

### Get mail server
```
dig <domain> mx
```

### Zonetransfer on specific host
```
dig axfr @<dns-ip> <domain>
```

### Get any information
```
dig ANY @<dns-ip> <domain>
```

### Check sender policy framework
```
dig -t txt <domain> | grep -i spf
```

### Get txt records 
```
dig -t txt <domain>
```

