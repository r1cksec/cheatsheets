### List application pool user 
```
C:\Windows\System32\inetsrv\appcmd list apppools
```

### Dump credentials of application pool user (run as admin)
```
C:\Windows\System32\inetsrv\appcmd list apppool "<user>" /text:*
```

