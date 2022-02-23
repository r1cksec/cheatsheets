### exclude path from windows defender
```
Import-Module Defender
Add-MpPreference -ExclusionPath C:\Exclude
```

### find windows defender process
```
msMpEng.exe
```

