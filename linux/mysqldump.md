### Export MySQL or MariaDB database
```
mysqldump -u <user> -p <databaseName> > <resultFile>.sql
```

### Import database
```
mysql -u <user> -p

mysql> CREATE DATABASE newDatabase;

mysql -u <user> -p newDatabase < <resultFile>.sql
```

