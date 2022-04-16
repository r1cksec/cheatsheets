### Get permissions for smb share
```
Get-SmbShareAccess -Name "<name>"
```

### Grant full permission to everybody
```
Grant-SmbShareAccess -Name "<name>" -AccountName "Everyone" -AccessRight Full -Force
```

