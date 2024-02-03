### Source
https://github.com/IntelligenceX/SDK/blob/master/Intelligence%20X%20API.pdf

### Send search request for email addresses (sort 2 = most relevant items first”)
```
curl -s -X POST -H "Content-Type: application/json" -H "x-key: <apiKey>" 'https://2.intelx.io/phonebook/search' --data '{"term":"<domain>","lookuplevel":0,"maxresults":1000,"timeout":null,"datefrom":"","dateto":"","sort":2,"media":0,"terminate":[]}'
```

### Retreive results of given phonebook search id
```
curl -s -H "x-key: <apiKey>" 'https://2.intelx.io/phonebook/search/result?id=<resultId>'
```

