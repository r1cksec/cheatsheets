### Get domain name and domain controler
```
[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
```

### Get forest information
```
[System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
```

### Get domain trusts
```
[System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain().GetAllTrustRelationships()
```

### Get forst trusts
```
[System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest().GetAllTrustRelationships()
```

### Query active directory domain services for specific computer object
```
$domainObject = New-Object System.DirectoryServices.DirectoryEntry "LDAP://<domainConrollerIp>", <user>, "<password>"
$searchObject = New-Object System.DirectoryServices.DirectorySearcher $domainObject
$searchObject.Filter = "(&(objectCategory=Computer)(name=<name>))"
$searchObject.FindAll().properties
```

### Query active directory domain services for all computer or user object 
```
$searchObject.Filter = "(|(objectCategory=Computer)(objectCategory=User))"
$searchObject.FindAll() | Select -Expand Properties
```

