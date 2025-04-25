### Source
https://github.com/Gerenios/AADInternals

### Install and Import
```
Install-Module AADInternals
Import-Module AADInternals.psd1
```

### Gather informations from AzureAD
```
Invoke-AADIntReconAsOutsider -DomainName <tenant>.onmicrosoft.com
```

### Read local config
```
Get-AADIntConfiguration
```

# Set user-agent in local config
```
Set-AADIntSetting -Setting "User-Agent" -Value "<userAgent>"
```

### Gather informations from AzureAD
```
Get-AADIntTenantDomains -Domain <domain>
```

# Show the cached credentials
```
Get-AADIntCache
```

# Clear the cache
```
Clear-AADIntCache
```

# Add access token to cache
```
Add-AADIntAccessTokenToCache -AccessToken "<accessToken>" -RefreshToken "<refreshToken>"
```

# Get access token for MS Graph API for "Microsoft Office" client using interactive login
```
Get-AADIntAccessToken -ClientId "<clientId>" -Resource "https://graph.microsoft.com"
```

# Parse access token
```
Read-AADIntAccesstoken -AccessToken <accessToken> -showdate
```

# Get access token from refresh token
```
Import-Module .\AccessToken_utils.ps1
Get-AADIntAccessTokenWithRefreshToken -ClientId "<clientId>" -Resource "https://graph.windows.net" -TenantId "<tenantId>" -RefreshToken <refreshToken>
```

