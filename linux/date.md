### Convert Unix timestamp
```
date -d @1302401211
```

### Convert pwdlast set from LDAP
```
date -d "1601/1/1+$(expr <pwdLastSet> / 10000000 )Seconds"
```

### Get the date one week before today
```
date -d "7 days ago" +"%Y-%m-%d"
```

