### source
https://github.com/r1cksec/Get-LAPSPasswords/blob/master/Get-LAPSPasswords.ps1  

### retreive all available laps passwords
```
Get-LAPSPasswords -DomainController <domainControllerIp> -Credential <domain>\<user> 
```

### read laps password from single computer
```
$sc =  ConvertTo-SecureString '<password>' -AsPlainText -Force ; $cred = New-Object System.Management.Automation.PSCredential('<domain>\<user>', $sc); Get-LAPSPasswords -domainController <domainControllerIp> -computer <computerName> -credential $cred
```

