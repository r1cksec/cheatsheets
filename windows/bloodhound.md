### Ingestors
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1  
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/20ee4feb119a96cce3e5ebd5631f4ca64156694b/Collectors/SharpHound.ps1
https://github.com/BloodHoundAD/BloodHound/raw/master/Collectors/SharpHound.exe  

### Collect informations using only LDAP queries
```
Invoke-BloodHound -CollectionMethod DCOnly -NoSaveCache -RandomizeFilenames -EncryptZip
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

### Opsec considerations
https://blog.compass-security.com/2022/05/bloodhound-inner-workings-part-1
https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/docs/images/SharpHoundCheatSheet.png

