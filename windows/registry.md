### Installed software for user
```
HKCU\Software 
```

### Mapped network drives
```
HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Map Network Drive MRU 
```

### Password keys 
```
HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon \autoadminlogon HKLM\Security\Policy\Secrets 
```

### Mounted devices
```
HKLM\Sjstern\MountedDevices 
```

### Installed software on machine
```
HKLM\Software 
```

### Local account token filter policy
```
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system\LocalAccountTokenFilterPolicy 
```

### Local account token filter policy
```
HKLM\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM /V LocalAccountTokenFilterPolicy 
```

### OS information
```
HKLM\Software\Microsoft\Windows NT\CurrentVersion 
```

### Registered owner
```
HKLM\Software\Microsoft\Windows NT\CurrentVersion /v RegisteredOwner 
```

### UAC settings
```
reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System | Select-String EnableLUA
```

### System root
```
HKLM\Software\Microsoft\Windows NT\CurrentVersion /v SystemRoot 
```

### Script block logging
```
HKLM\Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging 
```

### Transcription/console logging (powershell.exe, PowerShell ISE, .NET DLL, msbuild, etc.)
```
HKLM\Software\Policies\Microsoft\Windows\PowerShell\Transcription 
```

### WUServer (spoofable if http for WUServer)
```
HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate 
```

### Password caching (disabled by default since Windows 2008 R2)
```
HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest\UseLogonCredential 
```

### USB devices
```
HKLM\System\CurrentControlSet\Enurn\USBStor 
```

### RunAsPPL (Protected Process Light)
```
HKLM\SYSTEM\CurrentControlSet\Control\Lsa /v RunAsPPL
```

### AMSI provider
```
HKLM\SOFTWARE\Microsoft\AMSI\Providers
```

### Startup locations (elevated)
```
HKLM\Software\Microsoft\Windows\CurrentVersion\Run
HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce
HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run
HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices
HKLM\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce
```

### Startup locations (userland) 
```
HKCU\Software\Microsoft\Windows\CurrentVersion\Run 
HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce 
HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run 
HKCU\Software\Microsoft\Windows\CurrentVersion\RunServices 
HKCU\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce
```

### Prevent windows reboot on expired VMs (delete whole key)
```
HKLM\SYSTEM\CurrentControlSet\Services\WLMS
```

