### Source
https://viewdns.info/api/docs

### Return details about current subscription
```
curl -s "https://api.viewdns.info/account/?action=balance&apikey=<apiKey>&output=json" 
```

### Get domains that shares the same nameserver
```
curl -s "https://api.viewdns.info/reversens/?ns=<nameserver>&apikey=<apiKey>&output=json"
```

### Get domains that use the same mailserver
```
curl -s "https://api.viewdns.info/reversemx/?mx=<mailserver>&apikey=<apiKey>&output=json"
```

### Get domains that use(d) the same ip address
```
curl -s "https://api.viewdns.info/reverseip/?host=<ip>&apikey=<apiKey>&output=json"
```

