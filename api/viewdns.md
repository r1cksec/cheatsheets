### Source
https://viewdns.info/api/docs

### Return details about current subscription
```
curl "https://api.viewdns.info/account/?action=balance&apikey=<apiKey>&output=json" 
```

### Get domains that shares the same nameserver
```
curl "https://api.viewdns.info/reversens/?ns=<nameserver>&apikey=<apiKey>&output=json"
```

### Get domains that uses the same mailserver
```
curl "https://api.viewdns.info/reversemx/?mx=<mailserver>&apikey=<apiKey>&output=json"
```

### Get domains that use(d) the same ip address
```
curl "https://api.viewdns.info/reverseip/?host=<ip>&apikey=<apiKey>&output=json"
```

