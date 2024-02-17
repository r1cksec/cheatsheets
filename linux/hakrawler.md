### Source
https://github.com/hakluke/hakrawler  

### Crawl URL for gathering URLs and javasript file location, -insecure = Ignore TLS errors
```
echo "<url>" | hakrawler -insecure
```

### -s = Show the source of URL, -u = Show only unique URLS,  -d = Depth to crawl
```
cat "<urlFile>" | hakrawler -s -u -d 1
```

