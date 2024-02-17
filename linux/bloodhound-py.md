### Source
https://github.com/fox-it/BloodHound.py  

### Collect active directory informations
```
python3 bloodhound.py -u <user> -d <domain> -p <password> -dc <dcFqdn> -ns <dnsServerIp> --dns-tcp --collectionmethod DCOnly 
```

### Collection methods
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

