### Source
https://raw.githubusercontent.com/Kevin-Robertson/Powermad/master/Powermad.ps1  

### Add new machine account to domain
```
New-MachineAccount -MachineAccount <newComputer> -Password $(ConvertTo-SecureString '<newPassword>' -AsPlainText -Force)
```

