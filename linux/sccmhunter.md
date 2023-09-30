### Source
https://github.com/garrettfoster13/sccmhunter

### Find SCCM server
```
python3 sccmhunter.py find -u <user> -p "<password>" -d <domain> -dc-ip <domainController>
```

### Enumerate SMB shares and check SMB signing and MSSQL service
```
python3 sccmhunter.py smb -u <user> -p "<password>" -d <domain> -dc-ip <domainController>
```

### Show accounts associated with SSCM (run after find and smb modules)
```
python3 sccmhunter.py show -users
```

