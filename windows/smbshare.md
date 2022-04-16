### List smb shares
```
Get-SmbShare -name "<rhost>"
```

### Create smb share
```
New-SmbShare -Name "<name>" -Path "<path>" -FullAccess "<domain>\<user>"
```

