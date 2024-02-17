### Get domain name and information about administrator
```
net user administrator /domain
```

### Get all users in domain
```
net user /domain
```

### Unlock domain user account
```
net user <user> /ACTIVE:yes /domain
```

### Change domain user password
```
net user <user> "<newpassword>" /domain
```

### Create new user
```
net user <user> <password> /add /domain
```

### Delete user
```
net user <user> /delete /domain
```


### Get all groups in domain
```
net group /domain
```

### Get users of a group
```
net group "<group>" /domain
```

### Get domain controller
```
net group "Domain Controllers" /domain
```

### Add user to group
```
net group "<group>" <user> /add /domain
```


### Get domain password policy
```
net accounts /domain
```


### Get all user in local admin group
```
net localgroup administrators
```

### Add user to a local group
```
net localgroup "<group>" <user> /add
```


### List current SMB shares
```
net share
```

### Mount smb share
```
net use <localDrive> \\<rhost>\<remoteDrive>
or
net use * \\<lhost>\<share>
```

### Unmount smb share
```
net use <localDrive> \\<rhost>\<remoteDrive> /delete
```

### Get active sessions of local computer
```
net session
```

### Terminate all running sessions
```
net use /delete *
```


### Get remote shares
```
net view \\<rhost> /all
```

### Get information about error id
```
net helpmsg <id>
```

### Map network drive to sysinternal website
```
net use <driverLetter>: http://live.sysinternals.com/tools
```

