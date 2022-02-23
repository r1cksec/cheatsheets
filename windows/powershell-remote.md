### uses port 5985,5986 - activate remote powershell
```
Enable-PSRemoting -Force
```

### connect to remote device and execute single command
```
Invoke-Command -ComputerName <rhost> -ScriptBlock { <command> } -credential <user>
```

### execute local script remotely
```
Invoke-Command -ComputerName <rhost> -ScriptBlock { <command> } -credential <user> -FilePath C:\<localScript>.ps1
```

### start remote session
```
Enter-PSSession -ComputerName <rhost> -Credential <user>
```

