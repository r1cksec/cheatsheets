### source
https://github.com/fox-it/BloodHound.py  

### collect active directory informations
```
python3 bloodhound.py -u <user> -d <domain> -p <password> -dc <dcFqdn> -ns <dnsServerIp> --collectionmethod all 
```

### collection methods
```
Acl
DCOM
DCOnly (Group,Acl,Trusts,ObjectProps)
Group
LocalAdmin
LoggedOn
ObjectProps (LastLogon, PwdLastSet)
PSRemote
RDP
Session
Trusts
```

