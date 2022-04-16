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

