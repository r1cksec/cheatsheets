### create shortcut
```
$Wsh = New-Object -comObject WScript.Shell
$Shortcut = $Wsh.CreateShortcut("$Home\Desktop\shortcut.lnk")
$Shortcut.iconlocation = "C:\Program Files\Windows NT\Accessories\wordpad.exe"
$Shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$Shortcut.arguments = " -c mkdir C:\newDir"
$Shortcut.Save()
```

