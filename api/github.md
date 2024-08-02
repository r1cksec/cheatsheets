### Source
https://docs.github.com/en/rest

### Create private repository
```
curl -X POST -H "Authorization: token <apiKey>" -H "Accept: application/vnd.github+json" https://api.github.com/user/repos -d '{"name": "<repository>", "description": "<description>", "private": true}'
```

### Delete repository
```
curl -X DELETE -H "Authorization: token <apiKey>" -H "Accept: application/vnd.github+json" https://api.github.com/repos/<user>/<repository>
```

### List files inside repository
```
curl -H "Authorization: token <apiKey>" https://api.github.com/repos/<user>/<repository>/contents
```

### Upload file to repository
```
curl -X PUT -H "Authorization: token <apiKey>" https://api.github.com/repos/<user>/<repository>/contents/<filePath> -d "{\"message\":\"<message>\",\"content\":\"<fileContentBase64>\"}"
```

### Get commit meta data
```
curl -H "Authorization: token <apiKey>" -H "Accept: application/vnd.github.v3+json" "https://api.github.com/repos/<user>/<repository>/commits?path=<filePath>"
```

### Get file content and meta data
```
curl -s -H "Authorization: token <apiKey>" https://api.github.com/repos/<user>/<repository>/contents/<filePath>
```

### Download file from repository
```
curl -s -H 'Authorization: token <apiKey>' -H 'Accept: application/vnd.github.v3.raw' -o <outfile> "https://api.github.com/repos/<user>/<repository>/contents/<filePath>"
```

### Upload and overwrite file 
```
curl -X PUT -H "Authorization: token <apiKey>" https://api.github.com/repos/<user>/<repository>/contents/<filePath> -d "{\"message\":\"<message>\",\"content\":\"<fileContentBase64>\", \"sha\":\"<shaSum>\"}"
```

