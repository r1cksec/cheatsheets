### Create new task (taskName must be a full path)
```
schtasks /create /sc <event> /mo <modifier> /tn <taskName> /tr <taskRun>
```

### Possible events:
```
minute
hourly
daily
weekly
once
onstart
onlogon
onidle
monthly
onevent
```

### Example - execute script every minute regardless of which user logged in - start immediately
```
schtasks /create /sc minute /mo 1 /tn "taskName" /tr C:\Users\username\file.exe /ru system
```

### Example - execute script every day at 11 am
```
schtasks /create /sc daily /st 11:00 /tn "taskName" /tr C:\Users\username\file.cmd
```

### Run task as specific user - if executed as elevated process /rp is not needed
```
schtasks /create /sc <event> /mo <modifier> /tn <taskName> /tr <taskRun> /ru <domain>\<user> /rp <password>
```

### Get information about task
```
schtasks /query /tn "<taskName>" /fo List /v
```

### Delete task
```
schtasks /delete /tn "<taskName>" /f
```

### Display all scheduled tasks
```
schtasks /query /fo LIST /v
```

### Run task manually
```
schtasks /run /tn "<taskName>"
```

### Stop task manually
```
schtasks /end /tn "<taskName>"
```

