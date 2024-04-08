### Install client
```
apt install postgresql-client
```

### Change user password
```
sudo -i -u postgres
psql
\password postgres
```

### Create database
```
createdb <database>
```

### Dump database
```
pg_dump -h <host> -p -d <database> -U <user> -W
```

### Import
```
psql -h localhost -U postgres -f <file>
```

### Restore archive
```
pg_restore -h localhost -U postgres -d <database> <file>
```

### Show databases
```
\list
```

### Connect to database
```
\c <database>
```

### Show tables
```
\dt
```

### Dump
```
SELECT * FROM <table>
```

