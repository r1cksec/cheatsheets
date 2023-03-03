### Insert parameter in request, -d data, -s dont show error
```
curl -s -d grant_type=password -d param1=<value> -d param2=<value> https://<domain>/<path>
```

### Print POST body of request
```
curl --trace-ascii /dev/stdout -s -d param1=<value> https://<domain>/<path>
```

### Use GET and insert 2 lines into Header
```
curl -X GET -H 'Accept: application/json' -H 'eyJhbBar...' 'https://<domain>/<path>'
```

### Show only header of response
```
curl -I https://<domain> 
```

### Get http status code and redirect url
```
curl -L --write-out '%{http_code}\n%{url_effective}'
```

### JSON PUT
```
curl -i -H 'Content-Type: application/json' -H 'Accept: application/json' -X PUT -d '{"updated_<field>":"updated_<value>"}' "http://<domain>/<path>"
```

### Use timeout of 3 seconds, skip TLS verification, use POST with variables
```
curl -k --max-time 3 --data-binary $'username='"$user"'' https://<domain>
```

### Use cookie and follow redirect
```
curl -L --cookie "<cookieName>=<value>" https://<domain>
```

### Ntlm authentication
```
curl -u '<domainIntern>\<user>:<password>' --ntlm https://<rhost>
```

### Send ldap request
```
curl --user $<credentials> "ldaps://<fqdnDomanController>/DC=<domainComponent>,DC=<domainComponent>))
```

### Weather forecast
```
curl https://wttr.in/<city>
```

