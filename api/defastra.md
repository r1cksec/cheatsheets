### Source
https://docs.defastra.com/reference/authentication

### Check phone number for fraud indicators
```
curl --request POST \
     --url https://api.defastra.com/deep_phone_check \
     --header 'X-API-KEY: <apiKey>' \
     --header 'accept: application/json' \
     --header 'content-type: application/x-www-form-urlencoded' \
     --data timeout=normal \
     --data 'phone=<phoneNumber>'
```

### Check email address for fraud indicators
```
curl --request POST \
     --url https://api.defastra.com/deep_email_check \
     --header 'X-API-KEY: <apiKey>' \
     --header 'accept: application/json' \
     --header 'content-type: application/x-www-form-urlencoded' \
     --data timeout=normal \
     --data email=<email>
```


