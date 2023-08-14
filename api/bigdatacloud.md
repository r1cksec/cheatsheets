### Source
https://bigdatacloud.com/docs

### Validate email address and check for spam
```
curl "https://api-bdc.net/data/email-verify?emailAddress=<email>&key=<apiKey>"
```

### Check ip address for spam
```
curl "https://api-bdc.net/data/hazard-report?ip=<ip>&key=<apiKey>"
```

### Get informations about user-agent
```
curl "https://api-bdc.net/data/user-agent-info?userAgentRaw=<user+agent>&key=<apiKey>"
```

### Get informations about geolocation
```
curl https://api-bdc.net/data/reverse-geocode?latitude=<latitude>&longitude=<longitude>&key=<apiKey>"
```

