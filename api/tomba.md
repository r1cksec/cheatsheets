### Source
https://app.tomba.io/api

### Get information about current subscription
```
curl -s --request GET --url "https://api.tomba.io/v1/usage" -H "X-Tomba-Key: <apiKeyTa>" -H "X-Tomba-Secret: <apiKeyTs>"
```

### Get email addresses and social media profiles
```
curl -s --request GET --url "https://api.tomba.io/v1/domain-search?domain=<domain>" --header "X-Tomba-Key: <apiKeyTa>" --header "X-Tomba-Secret: <apiKeyTs>"
```

### Validate email address
```
curl -s --request GET --url "https://api.tomba.io/v1/email-verifier/<email>" --header "X-Tomba-Key: <apiKeyTa>" --header "X-Tomba-Secret: <apiKeyTs>
```

