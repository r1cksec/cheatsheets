### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/mssqlclient.py  

### Start mssql session using AD authentication
```
impacket-mssqlclient -windows-auth <user>:<password>@<rhost>
```

### Using hashes
```
impacket-mssqlclient -hashes :<ntlmHash> <user>@<rhost>
```

