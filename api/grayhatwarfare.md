### Source
https://buckets.grayhatwarfare.com/docs/api/v2

### Get subscription status
```
curl -s --request GET --url "https://buckets.grayhatwarfare.com/api/account" --header "Authorization: Bearer <apiKey>"
```

### Search for buckets that contain given string
```
curl -s --request GET --url "https://buckets.grayhatwarfare.com/api/v2/files?keywords=<keyword>&start=0&limit=1000" --header "Authorization: Bearer <apiKey>"
```

