### Requires Remote Server Administration Tools - default on domain controller
```
Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
Import-Module ActiveDirectory
```

### Create new organisational unit
```
New-ADOrganizationalUnit -Name "<name>"
```

### Get informations about organisational unit
```
Get-ADOrganizationalUnit -Identity "<distinguishedName>"
```

