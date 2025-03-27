### Add registry entry
```
reg add <path> /v <value> /t <type> /d <pathToFile>
```

### Delete registry entry 
```
reg delete "<path>" /v <value> /f
```

### Add example (REG_SZ UTF-16 LE string)
```
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v someRegistry /t REG_SZ /d "C:\Users\username\persist.exe"
```

### Delete example
```
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v someRegistry /f
```

### Get information about registry key
```
reg query "<path>"
```

### Write security hive to file (sam, system, security, software)
```
reg save hklm\security <file>
```

### Re-enable command prompt
```
reg add HKCU\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 0 /f
```

### Disable local account token filter policy
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
```

### Enable remotely RDP
```
reg add "\\<rhost>\HKLM\SYSTEM\CurentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
```

### Read configured Windows defender exclusions
```
reg query "HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions" /s
```

### Enable multiple RDP sessions per user
```
reg add HKLM\System\CurrentControlSet\Control\TerminalServer /v fSingleSessionPerUser /d 0 /f
```

### Enable Powershell Constrained Language Mode
```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "__PSLockdownPolicy" /t REG_SZ /d "4" /f
```

