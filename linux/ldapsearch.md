### Install
```
apt install ldap-utils
```

### Basic request (works unauthenticated, -L = dont print LDIF version, -s scope of search)
```
ldapsearch -LLL -x -H ldap://<domainController> -b '' -s base '(objectclass=*)'
```

### Get information about single user (-b searchbase)
```
ldapsearch -H ldap://<domainController> -D "<user>@<domain>" -w '<password>' -b "dc=<domainComponent>,dc=<domainComponent>,dc=<domainComponent>" "(sAMAccountName=<user>)"
```

### Filter
```
"(objectclass=computer)" "DNSHostName" "OperatingSystem"
"(objectclass=user)"
"(&(<condition1>)(<condition2>))"
```

### Reference error troubleshooting
```
RefErr: DSID-0310079C -> wrong DN/searchbase (incorrect domain controller or incorrect searchbase)
```

### Certificate error troubleshooting
```
LDAPTLS_REQCERT=never
```

