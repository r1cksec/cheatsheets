### Source
https://github.com/dirkjanm/ROADtools

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

