### Source
https://www.powershellgallery.com/packages/AzureAD/2.0.2.140

### Install
```
Install-Module AzureAD
```

### Initial connect
```
Connect-AzureAD
$pw = ConvertTo-SecureString "<password>" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential("<user>@<tenant>.onmicrosoft.com", $pw)
Connect-AzureAD -Credential $cred
```

### Get information about tenant
```
Get-AzureADTenantDetail
```

### Get all user
```
Get-AzureADUser -All $true | ConvertTo-Json
```

### Get all devices
```
Get-AzureADDevice -All $true | ConvertTo-Json
```

### Get all groups
```
Get-AzureADGroup -All $true | ConvertTo-Json
```

### Get all applications
```
Get-AzureADApplication -All $true | ConvertTo-Json
```

### Get application proxys
```
Get-AzureADApplication | %{try{Get-AzureADApplicationProxyApplication -ObjectId $_.ObjectID;$_.DisplayName;$_.ObjectID}catch{}
```

### Get all service principals
```
Get-AzureADServicePrincipal -All $true | ConvertTo-Json
```

### Query for specific user
```
Get-AzureADUser -ObjectId <user>@<tenant>.onmicrosoft.com
```

### Get user synced from on-prem
```
Get-AzureADUser -All $true | ?{$_.OnPremisesSecurityIdentifier -ne $null}
```

### Get usernames containing the word admin
```
Get-AzureADUser -All $true | ?{$_.Displayname -match "admin"}
```

### Get objects created by user
```
Get-AzureADUser | Get-AzureADUserCreatedObject
```

### Get objects owned by user (user have mostly admin access to owned devices)
```
Get-AzureADUserOwnedObject -ObjectId <user>@<tenant>.onmicrosoft.com
```

### Search for password inside properties
```
Get-AzureADUser -All $true |%{$Properties = $_;$Properties.PSObject.Properties.Name | % {if ($Properties.$_ -match 'password') {"$($Properties.UserPrincipalName) - $_ - $($Properties.$_)"}}} # testen
```

### Set new password for user
```
$Pw = "<password>" | ConvertTo-SecureString -AsPlainText -Force
(Get-AzureADUser -All $true | ?{$_.UserPrincipalName -eq "<user>@<tenant>.onmicrosoft.com"}).ObjectId | Set-AzureADUserPassword -Password $Pw
```

### Get groups containing the word admin
```
Get-AzureADGroup -SearchString "admin"
```

### Get member of group
```
Get-AzureADGroupMember -ObjectId <id>
```

### Add member to group
```
Add-AzureADGroupMember -ObjectId <targetGroupId> -RefObjectId <newMemberId> -Verbose
```

### Get all role templates
```
Get-AzureADDirectoryroleTemplate
```

### Get enabled roles (at least one user assigned)
```
Get-AzureADDirectoryRole
```

### Get role members
```
Get-AzureADDirectoryRoleMember -objectid <id>
```

### Get administrative unit of a given object
```
Get-AzureADMSAdministrativeUnit -Id <id>
```

### Get member of administrative unit
```
Get-AzureADMSAdministrativeUnitMember -Id <id>
```

### Get active devices
```
Get-AzureADDevice -All $true | ?{$_.ApproximateLastLogonTimeStamp -ne $null}
```

### Get devices owned by user
```
Get-AzureADUserOwnedDevice -ObjectId <userPrincipalName>
```

### Get devices registered by user
```
Get-AzureADUserRegisteredDevice -ObjectId <userPrincipalName>
```

### Get owner of application
```
Get-AzureADApplication -ObjectId <id> | Get-AzureADApplicationOwner
```

### Get owner of service principal
```
Get-AzureADServicePrincipal -ObjectId <id> | Get-AzureADServicePrincipalOwner
```

### Get objects owned by a service principal
```
Get-AzureADServicePrincipal -ObjectId <id> | Get-AzureADServicePrincipalOwnedObject
```

### Get objects created by a service principal
```
Get-AzureADServicePrincipal -ObjectId <id> | Get-AzureADServicePrincipalCreatedObject
```

