### Source
https://osint.bevigil.com

### Search for keyword in s3 bucket URLs
```
curl -s --location --request GET "http://osint.bevigil.com/api/<keyword>/S3-keyword" --header "X-Access-Token: <apiKey>"
```

### Get subdomains
```
curl --location --request GET "http://osint.bevigil.com/api/<domain>/subdomains" --header "X-Access-Token: <apiKey>"
```

