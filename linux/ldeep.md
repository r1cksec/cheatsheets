### Source
https://github.com/franc-pentest/ldeep

### Query for SCCM primary site and distribution point
```
ldeep ldap -u <user> -p <password> -d <domain> -s ldap://<domainController> search "(objectclass=mssmsmanagementpoint)" dnshostname,msSMSSiteCode
```

