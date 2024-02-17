### Source
https://docs.securitytrails.com/reference/history-whois

### Return details about current subscription
```
curl -s --request GET --url "https://api.securitytrails.com/v1/account/usage" --header "accept: application/json" --header "APIKEY: <apiKey>"
```

### Get historical whois information
```
curl -s --request GET --url "https://api.securitytrails.com/v1/history/<domain>/whois" --header "accept: application/json" --header "APIKEY: <apiKey>"
```

### Get mail-, nameserver and dns records
```
curl -s --request GET --url "https://api.securitytrails.com/v1/domain/<domain>" --header "accept: application/json" --header "APIKEY: <apiKey>"
```

### Get subdomains
```
curl -s --request GET --url "https://api.securitytrails.com/v1/domain/<domain>/subdomains" --header "accept: application/json" --header "APIKEY: <apiKey>"
```

### Get open ports of closeby IP addresses
```
curl -s --request GET --url "https://api.securitytrails.com/v1/ips/nearby/<ip>" --header "accept: application/json" --header "APIKEY: <apiKey>"
```

