### Note
```
Wmic uses port 135 to determine a random port for further communication.
Appears to not work with Fully Qualified Domain Names.
```

### Enable WinRM remotely
```
wmic /node:"<rhost>" process call create "powershell enable-psremoting -force"
```

### Get user accounts
```
wmic useraccount get name,fullname
```

### Get password expire value of accounts
```
wmic useraccount get name,passwordexpires /Value
```

### Unlock user account
```
wmic useraccount where name='username' set disabled=true
```

### Get os informations
```
wmic os list Brief /format:list
wmic os get ServicePackMajorVersion,Caption,OSArchitecture
```

### List all patches
```
wmic qfe
```

### Get domain name
```
wmic computersystem get domain
```

### Display architecture (32/64 bit)
```
wmic cpu get DataWidth /format:list
```

### List services that start automatically
```
wmic SERVICE WHERE StartMode="Auto" GET Name, State
```

### Execute cmd.exe
```
wmic.exe process call create "cmd /c <command>
```

### Kill process
```
wmic process where name="<processName>" call terminate
```

### View logical shares
```
wmic logicaldisk get description,name
```

### Remotely determine logged in user
```
wmic /node:"<rhost>" computersystem get username
```

### Execute file hosted over SMB on remote system with specified credential
```
wmic /node:"<rhost>" /user:"<domain>\<user>" /password:<password> process call create "\\<rhost>\<share>\<file.exe>"
```

### Remotely start RDP
```
wmic /node:"<rhost>" path Win32_TerminalServiceSetting where AllowTSConnections="0" call SetAllowTSConnections "1"
```

### Execute command
```
wmic /node:"<rhost>" /user:"<domain>\<user>" /password:"<password>" process call create "powershell <command>"
```

