### Source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/GetADUsers.py  

### List all user inside the domain (-dc-ip must only be passed if DNS is not available)
```
impacket-GetADUsers -dc-ip <domainController> <domain>/<user>:<password> -all
```

