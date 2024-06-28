### Source
https://hunter.how/search-api

### Get open ports from domain (regarding last 7 days)
```
curl "https://api.hunter.how/search?api-key=<apiKey>&query=$(echo 'domain="<domain>"' | base64)&start_time=$(date -d '7 days ago' +'%Y-%m-%d')&end_time=$(date +'%Y-%m-%d')"
```

### Get open ports from ip (regarding last 7 days)
```
curl "https://api.hunter.how/search?api-key=<apiKey>&query=$(echo 'ip="<ip>"' | base64)&start_time=$(date -d '7 days ago' +'%Y-%m-%d')&end_time=$(date +'%Y-%m-%d')"
```

