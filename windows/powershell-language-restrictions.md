### Show language mode 
```
$ExecutionContext.SessionState.LanguageMode
```

### Test language mode
```
[math]::Sqrt(4)
```

### Set full language mode
```
$ExecutionContext.SessionState.LanguageMode = "FullLanguage"
```

### Set constrained language mode
```
$ExecutionContext.SessionState.LanguageMode = "ConstrainedLanguage"
```

### Bypass language mode using powershell version 2
```
powershell -v 2 -exec bypass
```

### Show powershell version
```
$PSVersionTable
```

### Set constrained language mode (not the recommended way - 0 for FullLanguage)
```
[Environment]::SetEnvironmentVariable('__PSLockdownPolicy', '4', 'Machine')
```

