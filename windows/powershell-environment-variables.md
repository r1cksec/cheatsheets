### Get all windows environment variables
```
gci env:
```

### Print specific variable
```
echo $env:userdomain
```

### Fully qualified domain name
```
echo $env:computername.$env:userdnsdomain
```

### Last error message
```
echo $Error[0]
```

### Current powershell profile
```
echo $profile
```

### Show all variables of current scope
```
Get-ChildItem Variable:\
```

### Equivalent to /dev/null
```
$null
```

### Current process id
```
$PID
```

### Status of last executed command
```
$?
```

