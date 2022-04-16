### Exclude path from windows defender
```
Import-Module Defender
Add-MpPreference -ExclusionPath C:\Exclude
```

### Find windows defender process
```
msMpEng.exe
```

