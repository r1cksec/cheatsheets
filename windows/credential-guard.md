### Note
```
Credentials for local accounts in SAM and Service account credentials from LSA Secrets are not protected by credential guard.
Only available on the Windows 10 Enterprise edition and Server 2016.
```

### If credential guard is running, the following should return some output
```
$DevGuard = Get-CimInstance –ClassName Win32_DeviceGuard –Namespace root\Microsoft\Windows\DeviceGuard 
if ($DevGuard.SecurityServicesConfigured -contains 1) {"Credential Guard configured"} 
if ($DevGuard.SecurityServicesRunning -contains 1) {"Credential Guard running"}
```

