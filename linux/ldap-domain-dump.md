### Source
https://github.com/dirkjanm/ldapdomaindump  

### Basic usage
```
python3 ldapdomaindump -u <domain>\\<user> -p <password> <ipOfDomainController> -d "|"
```

### Using LDAPS
```
python3 ldapdomaindump -u <domain>\\<user> -p <password> ldaps://<ipOfDomainController> -d "|" 
```

### Operating system overview
```
grep -v ACCOUNT_DISABLE domain_computers.grep | cut -d \| -f4 | sort | uniq -c | sort -n
```

### List valid account names
```
grep -v ACCOUNT_DISABLED domain_users.grep | cut -d \| -f3
```

### Convert data to import into bloodhound
```
python3 ldapdomaindump/convert.py domain_users.json domain_groups.json
```

