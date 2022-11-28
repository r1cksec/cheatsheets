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

### Get all resource groups visible to current user
```
Get-AzResourceGroup
```

### Get details about deployment of specific resource group
```
Get-AzResourceGroupDeployment -ResourceGroupName '<name>'
```

### Download resource group deployment template 
```
Save-AzResourceGroupDeploymentTemplate -ResourceGroupName <name> -DeploymentName <deploymentName>
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

### List accessible key vaults
```
Get-AzKeyVault
```

### Access key vault
```
Get-AzKeyvaultsecret -VaultName <name>
Get-AzKeyVault -VaultName <vaultName> -Name <secretName> -AsPlainTex
```

### List all virtual machines where current user has at least Reader role
```
Get-AzVM
```

### List visble network profiles
```
Get-AzVM -Name <name> | Select -ExpandProperty NetworkProfile
```

### Get details about extension
```
Get-AzVMExtension -ResourceGroupName <resourceGroupName> -VMName <name> | Select -ExpandProperty NetworkProfile
```

### Create new vm extension
```
Set-AzVMExtension -ResourceGroupName <resourceGroupName> -ExtensionName "ExecCmd" -VMName <VMName> -Location "<location>" -Publisher Microsoft.Compute -ExtensionType CustomScriptExtension -TypeHandlerVersion 1.8 -SettingString '{"commandToExecute":"powershell <command>"}'
```

### Run command
```
Invoke-AzVMRunCommand -ScriptPath <file>.ps1 -CommandId "<someName>" -VMName "<name>" -ResourceGroupName "<name>"
```

### Run command via runbook
```
Import-AzAutomationRunbook -Name <runName> -Path <local\path\to\ps1> -AutomationAccountName <name> -ResourceGroupName <name> -Type PowerShell -Force -Verbose
Publish-AzAutomationRunbook -RunbookName <runName> -AutomationAccountName <name> -ResourceGroupName <name> -Verbose
Start-AzAutomationRunbook -RunbookName <name> -RunOn <workGroup> -AutomationAccountName <name> -ResourceGroupName <name>
```

### List visible storage accounts
```
Get-AzStorageAccount 
```

### Get content of storage container
```
Get-AzStorageContainer -Context (Get-AzStorageAccount -Name <name> -ResourceGroupName <resourceGroupName>).Context
```

### List visible service apps and function apps
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

