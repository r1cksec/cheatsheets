# Vocabulary

## Azure Key Vault 
Azure Key Vaults are places where encrypted secrets can stored.

## Conditional Access Policies
Fine-grained controls for access to resources and when or where MFA is applied.

## Enterprise
The Enterprise represents the Azure global unique identity that a company owns and allows access to subscriptions, tenants and services.

## Managed Identity
A Managed Identity is a Service Principal of a special type that may only be used with Azure resources. Managed Identities can be used to access Azure Key Vaults and storage accounts.

## Resource
A Resource can be an account, run-book, virtual network, application, etc.

## Runbook
A Runbook is part of the Azure Automation service. It supports scripting languages like PowerShell or Python.

## Storage Account
An Azure storage account can contain all sort of Azure Storage data objects, including blobs, file shares, queues, tables, and disks.

## Subscriptions
Describes how you gain access to an Azure service.

## System-Assigned Managed Identity
Once a resource has been deleted the SAMI will be deleted too.

## Tenant
A Tenant is an instance of an Enterprise. An Enterprise can have multiple tenants (like domains in a forest).

## User-Assigned Managed Identity
Once a resource has been deleted the UAMI won't not be deleted. UAMI can be used on multiple resources.


# Azure AD Connect Methods

## Password Hash Synchronization
Using the Password Hash Synchronization (PHS) the passwords from on-premise AD are sent to the cloud. This is done using a specific service account that has similar rights like DCSync.

## Pass Through Authentication
Using the Pass Through Authentication (PTA) the passwords are kept on-premise and an on-premise agent validates the authentication.

## Active Directory Federation Services
Using the Active Directory Federation Services (ADFS) Azure AD is set as a trusted agent for federation and allows to login with on-premise credentials.


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

# Roles

## Owner
Has full control over a resource.

## Contributor
Has all rights exceüt the ability to change permissions.

## Reader
Has only read access.

## User Access Administrator
Has the possibility to manage user access to Azure resources.


# Urls

## Verify if the target company uses Azure AD
https://login.microsoftonline.com/getuserrealm.srf?login=<targetMail>
https://github.com/0xZDH/o365spray

```
Check 'NameSpaceType' value:

Managed -> O365 is in use
Federated = Federated Active Directory
Unknown = Record does not exist

python3 o365spray.py --validate --domain <targetDomain>
```

## Verify email addresses
https://login.microsoftonline.com/common/GetCredentialType
https://github.com/dievus/Oh365UserFinder
https://github.com/LMGsec/o365creeper

```
python3 Oh365UserFinder.py -r <emailFile> -w <output> -t <seconds>

o365creeper.py -f <emailsFile> -o <validEmailsFile>
```

## Basic Azure Storage Url
```
<storageAccountName>.blob.core.windows.net
```

## Authenticated user enumeration and Password Spraying
https://login.Microsoft.com/common/oauth2/token
https://github.com/dafthack/MSOLSpray

```
Invoke-MSOLSpray -UserList .\<userlist>.txt -Password <password>
```

## Tools for authenticated recon
https://github.com/nyxgeek/o365recon
https://github.com/dirkjanm/ROADtools

## Search mailboxes and extract contact informations
https://github.com/dafthack/MailSniper
```
Invoke-SelfSearch -Mailbox <user>@<domain> -Terms "*password*","*secret*","*key*"

Get-GlobalAddressList -ExchHostname <rhost> -UserName <domain>\<user> -Password <password> -OutFile <outFile>
```

## Identify inconsistencies in Microsoft MFA deployments
https://github.com/dafthack/MFASweep

```
Invoke-MFWSweep -Username <user>@<domain> -Password <password>
```

## Vulnerability Analyse
https://github.com/NetSPI/MicroBurst
https://github.com/hausec/PowerZure
https://github.com/Azure/Stormspotter
https://github.com/BloodHoundAD/AzureHound

## Resources
https://hausec.com/2022/05/04/azure-virtual-machine-execution-techniques
https://m365internals.com/2021/11/30/lateral-movement-with-managed-identities-of-azure-virtual-machines
https://pentestbook.six2dez.com/enumeration/cloud/azure
https://posts.specterops.io/attacking-azure-azure-ad-and-introducing-powerzure-ca70b330511a
https://www.youtube.com/watch?v=u_3cV0pzptY

