### Source
https://github.com/Malwarize/webpalm

### Crawl URL (exclude status codes and set depth level to 1)
```
webpalm -u https://<rhost> -l1 -x 404,500
```

### Crawl URL search for email addresses and HTML comments
```
webpalm -u https://<rhost> -l1 --regexes comments="\<\!--.*?-->",emails="([a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+)"
```

