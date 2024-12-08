### Install
* https://www.microsoft.com/en-us/download/details.aspx?id=53339
* https://www.microsoft.com/en-us/download/details.aspx?id=53591

### Import database
```
sqlcmd -S (localdb)\Local -i <path>\<file>.bak -x -e
```

### Connect and list databases, tables and content
```
sqlcmd -S (localdb)\Local

select DB_NAME()
go

select TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
go

select * FROM <table>
go
```

