### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/mssqlclient.py  

### Start mssql session
```
impacket-mssqlclient <user>:<password>@<rhost>
```

### Using hashes
```
impacket-mssqlclient -hashes :<ntlmHash> <user>@<rhost>
```

