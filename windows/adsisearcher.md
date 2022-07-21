### Get all usernames without limit 
```
$res = ([adsisearcher]"(objectClass=user)"); $res.PageSize = 1000; $res.FindAll().Properties.samaccountname
```

### Get all computer object 
```
$res = ([adsisearcher]"(objectClass=computer)"); $res.PageSize = 1000; $res.FindAll().Properties | convertto-json
```

### Get domain admins
```
([adsisearcher]"(&(objectClass=user)(admincount=1))").FindAll().Properties.samaccountname
```

### Query for specific user
```
([adsisearcher]"(&(objectClass=user)(samaccountname=<user>))").FindAll().Properties | convertto-json
```

### Query for azure ad connect server
```
([adsisearcher]"(samaccountname=MSQL_*)").FindAll().Properties
```

### Query for laps password
```
([adsisearcher]"(&(objectClass=computer)(name=<computer>))").FindAll().Properties | ForEach-Object {$_.name, $_."ms-mcs-admpwd"}
```

### Get distinguished name of specific user
```
([adsisearcher]"(&(objectClass=user)(samaccountname=<user>))").FindAll().Properties.distinguishedname
```

### Get kerberoastable accounts
```
([adsisearcher]"(&(sAMAccountType=805306368)(servicePrincipalName=*))").FindAll()
```

### Get all user with Logon Script field
```
([adsisearcher]'(&(objectCategory=person)(objectClass=user)(scriptPath=*))').FindAll()
```

### Get failed logon attempt of specific user
```
([adsisearcher]"(&(ObjectCategory=Person)(ObjectClass=User))").FindAll() | % {write-host $_.Properties['name'] " - " $_.Properties['badpwdcount'] }
```

### Print network ranges
```
$s=[adsisearcher]'(name=*)'; $s.SearchRoot = [adsi]"LDAP://cn=Subnets,cn=Sites,cn=Configuration,dc=<domainComponent>,dc=<domainComponent>"; $s.FindAll() | Select *
```

