### get GPO for given OU - requires Remote Server Administration Tools - default on domain controller
```
Get-GPInheritance -Target '<dinstiguishedName>'
```

### show verbose
```
Get-GPInheritance -Target '<dinstiguishedName>' | select-object -expandproperty InheritedGpoLinks
```

