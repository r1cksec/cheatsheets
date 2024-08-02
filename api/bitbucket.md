### Source
https://developer.atlassian.com/cloud/bitbucket/rest/intro

### Upload file to repository
```
curl -X POST -H "Authorization: Bearer <apiKey>" -F "<uploadFile>=@./<localFile>" "https://api.bitbucket.org/2.0/repositories/<workspace>/<repository>/src?branch=master"
```

### Get meta data of file
```
curl -H "Authorization: Bearer <apiKey>" "https://api.bitbucket.org/2.0/repositories/<workspace>/<repository>/commits?path=<filePath>"
```

### Download file
```
curl -H "Authorization: Bearer <apiKey>" "https://api.bitbucket.org/2.0/repositories/<workspace>/<repository>/src/master/<filePath>"
```

### List files inside repository
```
curl -H "Authorization: Bearer <apiKey>" "https://api.bitbucket.org/2.0/repositories/<workspace>/<repository>/src/master/"
```

