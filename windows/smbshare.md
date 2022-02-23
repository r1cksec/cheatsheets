### list smb shares
```
Get-SmbShare -name "<rhost>"
```

### create smb share
```
New-SmbShare -Name "<name>" -Path "<path>" -FullAccess "<domain>\<user>"
```

