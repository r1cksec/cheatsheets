### Convert SID to objectname
```
$objSid = New-Object System.Security.Principal.SecurityIdentifier("<sid>")
$objUser = $objSid.Translate([System.Security.Principal.NTAccount])
$objUser.Value
```

### Convert objectname to SID
```
$objUser = New-Object System.Security.Principal.NTAccount(<name>)
$strSid = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSid.Value
```

### Convert localobject to SID
```
$objUser = New-Object System.Security.Principal.NTAccount("<objectname>")
$strSid = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSid.Value
```

