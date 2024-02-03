### Source
https://hunter.io/api-keys

### Get details about current subscription
```
curl -s "https://api.hunter.io/v2/account?api_key=<apiKey>"
```

### Get email addresses and social media profiles
```
curl -s "https://api.hunter.io/v2/domain-search?domain=<domain>&api_key=<apiKey>"
```

### Get source of specific email address 
```
curl -s "https://api.hunter.io/v2/email-finder?domain=<domain>&first_name=<firstname>&last_name=<lastname>&api_key=<apiKey>"
```

### Verify email address
```
curl -s "https://api.hunter.io/v2/email-verifier?email=<email>&api_key=<apiKey>"
```

### Get rootdomains for company
```
curl -s "https://hunter.io/v2/domains-suggestion?query=<company>"
```

