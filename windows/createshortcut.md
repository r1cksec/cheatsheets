### Create shortcut (unset hotkey by using $shortcut.HotKey = 0)
```
$wsh = New-Object -comObject WScript.Shell
$shortcut = $wsh.CreateShortcut("$Home\Desktop\shortcut.lnk")
$shortcut.iconlocation = "C:\Program Files\Windows NT\Accessories\wordpad.exe"
$shortcut.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$shortcut.arguments = " -c mkdir C:\newDir"
$shortcut.HotKey = "w"
$shortcut.WindowStyle = 7 # hides the executed window
$shortcut.Save()
```

### Will only work if lnk file is placed in one of the following paths
```
$Home\Desktop
$env:APPDATA\Roaming\Microsoft\Windows\Start Menu
$env:APPDATA\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar
```

