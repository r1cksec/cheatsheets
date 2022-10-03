# GUI

### Resolve names
```
MATCH (n) WHERE n.azname IS NOT NULL AND n.azname <> "" AND n.name IS NULL SET n.name = n.azname
```

### Show Global Administrators
```
MATCH p =(n)-[r:AZGlobalAdmin*1..]->(m) RETURN p
```

### Show all Service Principals
```
MATCH p = (g:AZServicePrincipal)-[r]->(n) RETURN p
```

### Show all owner of azure applications
```
MATCH p = (n)-[r:AZOwns]->(g:AZApp) RETURN p
```

### Show paths to Azure VM
```
MATCH p = (n)-[r]->(g: AZVM) RETURN p
```

### Show paths to Azure KeyVault
```
MATCH p = (n)-[r]->(g:AZKeyVault) RETURN p
```

### Show paths to Azure Resource Group
```
MATCH p = (n)-[r]->(g:AZResourceGroup) RETURN p
```

### Show owner of Azure Groups
```
MATCH p = (n)-[r:AZOwns]->(g:AZGroup) RETURN p
```

### Show all azure users and their groups
```
MATCH p = (m:AZUser)-[r:MemberOf]->(n) WHERE NOT m.objectid CONTAINS 'S-1-5' RETURN p
```

### Show all user synchronized with on-premise AD
```
MATCH (n:Group) WHERE n.objectid CONTAINS 'S-1-5' AND n.azsyncid IS NOT NULL RETURN n
```

### Find all On-Prem users with edges to Azure objects
```
MATCH p = (m:User)-[r:AZResetPassword|AZOwns|AZUserAccessAdministrator|AZContributor|AZAddMembers|AZGlobalAdmin|AZVMContributor|AZOwnsAZAvereContributor]->(n) WHERE m.objectid CONTAINS 'S-1-5-21' RETURN p
```


