### Get free disk space of remote host
```
$Disk = Get-WmiObject Win32_LogicalDisk -ComputerName <computer> -Filter "DeviceID='C:'" | Select-Object FreeSpace
$Disk.FreeSpace /1GB
```

### Get logged on user on remote host
```
Get-WmiObject win32_loggedonuser -ComputerName <computer>

Get-WmiObject –ComputerName <computer> –Class Win32_ComputerSystem | Select-Object UserName
```

### Get SCCM server
```
Get-WmiObject -class SMS_Authority -namespace root\CCM
```

### Check locally for SCCM credentials (admin priviledge needed)
```
Get-WmiObject -namespace "root\ccm\policy\Machine\ActualConfig" -class "CCM_NetworkAccessAccount"
```

### Get RAM usage
```
$obj =  Get-WmiObject -Class WIN32_OperatingSystem
$ram = (($obj.TotalVisibleMemorySize - $obj.FreePhysicalMemory)/1024/1024)
Write-Host "RAM usage in GB:" $ram
```

