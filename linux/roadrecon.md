### Source
https://github.com/dirkjanm/ROADtools

### Authenticate using Device Code
```
roadrecon auth --device-code
```

### Authenticate using Token
```
roadrecon auth --refresh-token "<refreshToken>" -c <clientId>
```

### Run enumeration
```
roadrecon gather -f <.roadtools_auth>
```

### Start graphical interface
```
roadrecon gui
```

### Load local database
```
roadrecon gui -d <file>.db
```

### Generate bloodhound graph
```
roadrecon plugin bloodhound -d <file>.db -du <user> -dp <password>
```

### Generate conditional access policy HTML
```
roadrecon plugin policies -d <file>.db -p
```

### Generate csv file from database
```
roadrecon plugin xlsexport -v -d <file>.db
libreoffice --headless --convert-to csv <file>.xls --outdir <outdir>
```

### Export usernames
```
sqlite3 <file>.db "select UserPrincipalName from Users;" 
```

