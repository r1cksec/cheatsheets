### Ingestors
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1  
https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.exe  

### Stealthier collection method (wait 15 seconds between probes and jitter with 10% probability)
```
Invoke-BloodHound -CollectionMethod Session -Throttle 15000 -Jitter 10
```

### Collection methods
```
ACL
All
ComputerOnly (Sessions, local Groups)
Container (OU, GPO-links)
DCOM
DCOnly (Users, Groups, Computers, Domain trusts, ACLs, OUs, GPO-Links)
GPOLocalGroup (touch only DC)
LocalAdmin
LocalGroup (RDP, DCOM, PSRemote)
PSRemote
RDP
Session
Trusts
```

