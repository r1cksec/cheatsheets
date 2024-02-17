### Basic request (works unauthenticated, -L = dont print LDIF version, -s scope of search)
```
ldapsearch -LLL -x -H ldap://<domainController> -b '' -s base '(objectclass=*)'
```

### Get all domain joined operating systems (-z result limit, -x simple auth, -W prompt for password, -D binddn, -b basedn)
```
ldapsearch -H ldap://<domainController> -z none -x -W -D "<user>@<domain>" -b "dc=<domainComponent>,dc=<domainComponent>" "(objectclass=computer)" "DNSHostName" "OperatingSystem"
```

### Get information about all user objects
```
ldapsearch -H ldap://<domainController> -z none -x -W -D "<user>@<domain>" -b "dc=<domainComponent>,dc=<domainComponent>" "(objectclass=user)"
```

### Logical AND (use | for OR) (use ! NEGATION)
```
ldapsearch -H ldap://<domainController> -z none -x -W -D "<user>@<domain>" -b "dc=<domainComponent>,dc=<domainComponent>" "(&(<condition1>)(<condition2>))"
```

