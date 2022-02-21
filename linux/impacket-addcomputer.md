### source
https://github.com/SecureAuthCorp/impacket/blob/master/examples/addcomputer.py  

### join new computer object to domain
```
impacket-addcomputer -computer-name '<name>$' -computer-pass <computerPassword> -dc-ip <rhost> <domain>/<user>:<password>
```

