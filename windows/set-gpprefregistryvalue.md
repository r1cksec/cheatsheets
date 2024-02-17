### Set a new registry value for specific GPO, requires Remote Server Administration Tools - default on domain controller
```
Set-GPPrefRegistryValue -Name '<gpoName>' -Context Computer -Action Create -Key 'HKLM\Software\Microsoft\Windows\CurrentVersion\Run' -ValueName '<name>' -Value 'powershell -c <command>' -Type ExpandString
```

