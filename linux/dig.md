### check domain result
```
dig <domain> +short
```

### reverse search (rDNS)
```
dig -x <ip> +short
```

### get mail server
```
dig <domain> mx
```

### zonetransfer on specific host
```
dig axfr @<dns-ip> <domain>
```

### get any information
```
dig ANY @<dns-ip> <domain>
```

### check sender policy framework
```
dig -t txt <domain> | grep -i spf
```

### check txt records for third party software
```
dig -t txt <domain>
```

