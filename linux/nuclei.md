### Source
https://github.com/projectdiscovery/nuclei  

### Install
```
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
```

### Scan single host using default templates
```
nuclei -u <rhost> -o <file>
```

### Scan list of hosts using single template
```
nuclei -l <rhostsFile> -t osint/<template>.yaml -o <file>
```

### Execute only osint templates
```
nuclei -tags osint -var user=<user> -o <file>
```

### List available templates
```
nuclei -tl
```

### Print all wordpress hosts
```
cat <nucleiScan>.json | jq -r 'select(.["template-id"] | contains("wordpress")) | .host'
```

### Print all matched URLs
```
cat <nucleiScan>.json | jq -r '.["matched-at"]'
```

