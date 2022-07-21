### Source
https://raw.githubusercontent.com/simondotsh/DirSync/master/DirSync.psm1

### Requirements
```
DS-Replication-Get-Changes
DS-Replication-Get-Changes-In-Filtered-Set
```

### Get LAPS password of given workstation
```
Sync-LAPS -LDAPFilter '(samaccountname=<computer>$)'
```

### Get LAPS passwords of all computer accounts and ignore certificate validation
```
Sync-LAPS -UseLDAPS -IgnoreCert
```

