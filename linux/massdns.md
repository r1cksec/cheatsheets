### Source
https://github.com/blechschmidt/massdns  

### Enumerate dns subdomains (-t record type, -o S simple text output)
```
cat <subdomainFile> | awk -F " " '{print $1".<domain>"}' | massdns -r <dnsResolversFile> -t A -o S -w <outputFile>
```

