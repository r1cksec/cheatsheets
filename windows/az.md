### Source
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

### Initial connect
```
az login -u <user>@<tenant>.onmicrosoft.com -p <password>
```

### Find commands for Vms
```
az find "vm"
```

### Get information about current tenant
```
az account tenant list
```

### List users
```
az ad user list
```

### List groups
```
az ad group list
```

### List user names of a group
```
az ad group member list -g "<groupName>" --query "[].[displayName]"
```

### List webapps
```
az webapp list 
```

### List functionsapps
```
az functionapp list 
```

### List storage accounts
```
az storage account list
```

### List keyvaults
```
az keyvault list
```

### List application objects registered in current domain
```
az ad app list
```

### Get information about specific application
```
az ad app show --id <id>
```

### Show owner of application
```
az ad app owner list --id <id>
```

### List service principals
```
az ad sp list --all
```

### Get information about specific service principal
```
az ad sp show --id <id>
```

### Get owner of service principal
```
az ad sp owner list --id <id>
```

### Request access token (the token itself can not be used by az)
```
az account get-access-token
```

### Request graph token
```
az account get-access-token --resource-type ms-graph
```

### Clear all tokens
```
az logout
```

