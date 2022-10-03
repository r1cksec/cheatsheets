### Install
```
Install-Module Az
```

### Initial connect
```
$pw = ConvertTo-SecureString "<password>" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential
("<user>@<tenant>.onmicrosoft.com", $pw)
Connect-AzAccount -Credential $cred
```

### List curennt context
```
Get-AzContext -ListAvailable
```

### Get custom defined roles 
```
Get-AzureADMSRoleDefinition | ?{_.IsBUiltin -eq $False} | Select Displayname
```

### Get group member
```
Get-AzADGroupMember -GroupDisplayName '<name>'
```

### Get all resources visible to current user
```
Get-AzResource
```

### List all RBAC role assignments
```
Get-AzRoleAssigment
```

### List all RBAC roles for specific user
```
Get-AzRoleAssignment -SignInName <user>@<tenant>.onmicrosoft.com
```

### List all service principals 
```
Get-AzADServicePrincipal
```

### Get details about specific service principal
```
Get-AzADServicePrincipal -ObjectId <id>
```

### List accessible keyvaults
```
Get-AzKeyVault
```

### List all VMs where current user has at least Reader role
```
Get-AzVM
```

### List visble network profiles
```
Get-AzVM -Name <name> | Select -ExpandProperty NetworkProfile
```

### Run command
```
Invoke-AzVMRunCommand -ScriptPath <file>.ps1 -CommandId "<someName>" -VMName "<name>" -ResourceGroupName "<name>"
```

### List visible storage accounts
```
Get-AzStorageAccount 
```

### List visile service and function apps
```
Get-AzWebApp | ?{$_.Kind -notmatch "functionapp"}
Get-AzFunctionApp
```

### Request access token for current session
```
(Get-AzAccessToken).Token
```

### Request access token for AAD Graph and Azure AD 
```
Get-AzAccessToken -ResourceTypeName MSGraph
```

### Use access token and graph token
```
Connect-AzAccount -AccountId <user>@<tenant>.onmicrosoft.com -AccessToken <token> -MicrosoftGraphAccessToken <graphToken>
```

