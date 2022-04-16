### Requires Remote Server Administration Tools - default on domain controller
```
Add-WindowsCapability -Online -Name Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
Import-Module ActiveDirectory
```

### Move object to another ou
```
Move-ADObject –Identity "<distinguishedName>" -TargetPath "<distinguishedName>"
```

