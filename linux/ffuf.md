### Source
https://github.com/ffuf/ffuf  

### Fuzz webpath (-e extensions, -t threads) 
```
ffuf -w <path>/SecLists/Discovery/Web-Content/CGI-XPlatform.fuzz.txt -u <rhost>/ccgi-bin/FUZZ -t <number> -e .sh,.pl,.cgi
```

### Print 200 status code URLs
```
jq -r '.results[] | select(.status == 200) | .url' <file>.json
```

