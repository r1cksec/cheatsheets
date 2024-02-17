### Get GPO for given OU - requires Remote Server Administration Tools - default on domain controller
```
Get-GPInheritance -Target '<dinstiguishedName>'
```

### Show verbose
```
Get-GPInheritance -Target '<dinstiguishedName>' | select-object -expandproperty InheritedGpoLinks
```

