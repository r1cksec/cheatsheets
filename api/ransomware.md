### Source
https://api-pro.ransomware.live/docs

### List recent victims
```
curl -s -X "GET" "https://api-pro.ransomware.live/victims/recent" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List sectors
```
curl -s -X "GET" "https://api-pro.ransomware.live/listsectors" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### Search for victim (postTitle or website)
```
curl -s -X "GET" "https://api-pro.ransomware.live/victims/search?q=<keyword>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### Search victims by sector (possible filters: group or country)
```
curl -s -X "GET" "https://api-pro.ransomware.live/victims/search?sector=<sector>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List groups
```
curl -s -X "GET" "https://api-pro.ransomware.live/group" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List details of specific group
```
curl -s -X "GET" "https://api-pro.ransomware.live/groups/<groupName>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List groups with inidicators of compromise (types: md5, ip, email)
```
curl -s -X "GET" "https://api-pro.ransomware.live/iocs?type=<type>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### Get IOCs for given group
```
curl -s -X "GET" "https://api-pro.ransomware.live/iocs/<groupName>?type=<type>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List groups with ransomware note
```
curl -s -X "GET" "https://api-pro.ransomware.live/listsectors" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List ransomware notes of given group
```
curl -s -X "GET" "https://api-pro.ransomware.live/ransomnotes/<groupName>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### Display content of ransomware note
```
curl -s -X "GET" "https://api-pro.ransomware.live/ransomnotes/<groupName>/<noteName>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

### List yara rules for given group
```
curl -s -X "GET" "https://api-pro.ransomware.live/yara/<groupName>" -H "accept: application/json" -H "X-API-KEY: <apiKey>"
```

