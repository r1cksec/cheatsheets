### List shares
```
Get-SmbShare -name "<rhost>"
```

### Create share (everyone/jeder)
```
New-SmbShare -Name "<name>" -Path "<path>" -FullAccess "<domain>\<user>"
```

### Remove share
```
Remove-SmbShare -Name "<name>"
```

