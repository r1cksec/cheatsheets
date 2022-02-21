### source
https://raw.githubusercontent.com/p0dalirius/pyLAPS/main/pyLAPS.py  

### read the password of all computers
```
python3 pyLAPS.py --action get -u '<user>' -d '<domain>' -p '<password>' --dc-ip <domainControllerIp>
```

### read the password of a specific computer
```
python3 pyLAPS.py --action get --computer '<computer>' -u '<user>' -d '<domain>' -p '<password>' --dc-ip <domainControllerIp>
```

