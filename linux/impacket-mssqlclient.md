### source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/mssqlclient.py  

### start mssql session
```
impacket-mssqlclient <user>:<password>@<rhost>
```

### using hashes
```
impacket-mssqlclient -hashes :<ntlmHash> <user>@<rhost>
```

