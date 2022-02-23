### create new task (taskName must be a full path)
```
schtasks /create /sc <event> /mo <modifier> /tn <taskName> /tr <taskRun>
```

### possible events:
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

### example - execute script every minute regardless of which user logged in - start immediately
```
schtasks /create /sc minute /mo 1 /tn "taskName" /tr C:\Users\username\file.exe /ru system
```

### example - execute script every day at 11 am
```
schtasks /create /sc daily /st 11:00 /tn "taskName" /tr C:\Users\username\file.cmd
```

### run task as specific user - if executed as elevated process /rp is not needed
```
schtasks /create /sc <event> /mo <modifier> /tn <taskName> /tr <taskRun> /ru <domain>\<user> /rp <password>
```

### get information about task
```
schtasks /query /tn "<taskName>" /fo List /v
```

### delete task
```
schtasks /delete /tn "<taskName>" /f
```

### display all scheduled tasks
```
schtasks /query /fo LIST /v
```

### run task manually
```
schtasks /run /tn "<taskName>"
```

### stop task manually
```
schtasks /end /tn "<taskName>"
```

