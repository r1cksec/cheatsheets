### Query active directory domain services for specific computer object
```
$domainObject = New-Object System.DirectoryServices.DirectoryEntry "LDAP://<domainConroller>", <user>, "<password>"
$searchObject = New-Object System.DirectoryServices.DirectorySearcher $domainObject
$searchObject.Filter = "(&(objectCategory=Computer)(name=<name>))"
$searchObject.FindAll()
```

### Query active directory domain services for all computer or user object 
```
$searchObject.Filter = "(|(objectCategory=Computer)(objectCategory=User))"
$searchObject.FindAll()
```

### Get properties of all objects
```
$searchObject.FindAll().properties
```

