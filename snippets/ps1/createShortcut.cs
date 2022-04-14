$ShCut = New-Object -ComObject WScript.Shell
$Shortcut = $ShCut.CreateShortcut("C:\result.lnk")
$Shortcut.iconlocation = "C:\Program Files\Windows NT\Accessories\wordpad.exe"
$Shortcut.TargetPath = "C:\execute.exe"
$Shortcut.Save()

