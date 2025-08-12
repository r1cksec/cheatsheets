### Source
https://www.zoomeye.ai/doc

### Get current subscription status
```
curl -s -X POST "https://api.zoomeye.ai/v2/userinfo" -H "API-KEY: <apiKey>"
```

### Send query to host endpoint
```
curl -s -X POST "https://api.zoomeye.ai/v2/search" -d '{"qbase64": "<base64EncodedFieldDescription>", "page": 1}' -H "API-KEY: <apiKey>"
```

### Field description
```
ip:'<ipAddr>'
domain:'<domain>'
url:'<url>'
hostname:'<hostname>'
os:'<operatingSystem>'
port:'<port>'
service:'<service>'
title:'<title>'
protocol:'<protocol>'
```

