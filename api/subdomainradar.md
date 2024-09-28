### Source
https://api.subdomainradar.io/docs

### Return details about current subscription
```
curl -s --request GET --url "https://api.subdomainradar.io/profile" --header "accept: application/json" --header "Authorization: Bearer <apiKey>"
```

### Get Tasks
```
curl -s --request GET --url "https://api.subdomainradar.io/tasks" --header "accept: application/json" --header "Authorization: Bearer <apiKey>"
```

### Get Task
```
curl -s --request GET --url "https://api.subdomainradar.io/tasks/<id>" --header "accept: application/json"
```

### Get enumerators list
```
curl -s --request GET --url "https://api.subdomainradar.io/enumerators" --header "accept: application/json"
```

### Get enumerators groups list
```
curl -s --request GET --url "https://api.subdomainradar.io/enumerators/groups" --header "accept: application/json"
```

### Launch Enumeration Task
```
curl -s --request POST \
  --url "https://api.subdomainradar.io/enumerate" \
  --header "accept: application/json" \
  --header "Authorization: Bearer <apiKey>" \
  --header "Content-Type: application/json" \
  --data '{
    "domains": [
      <domains>
    ],
    "enumerators": [
      <enumerators>
    ]
  }'
```

### Reverse Search
```
curl -s --request GET \
  --url "https://api.subdomainradar.io/reverse_search?subdomain_part=<subdomain_part>&domain_part=<domain_part>&tld_part=<tld_part>&exclude_generic_hosting_domains=<exclude_generic_hosting_domains>&exclude_gov_ed_domains=<exclude_gov_ed_domains>" \
  --header "accept: application/json" \
  --header "Authorization: Bearer <apiKey>"
```
