### Add registry key
```
reg.exe add HKLM\SOFTWARE\Microsoft\CurrentVersion\RunOnce /v <name> /t reg_sz /d <file>.exe
```

### Execute
```
runonce.exe /r
```

