### Show saved wireless profiles
```
netsh wlan show profiles
```

### Get the clear-text password 
```
netsh wlan show profile <ssid> key=clear
```

### List interfaces 
```
netsh interface ip show interfaces
```

### Set new dns server
```
netsh interface ip set dns local static <rhost>
```

### List proxy settings
```
netsh winhttp show proxy
```

### Load dll
```
netsh.exe add helper <file>.dll
```

### Port forward
```
netsh interface portproxy add v4tov4 listenport=9000 connectaddress=127.0.0.1 connectport=1080
```

### Show port forward settings
```
netsh interface portproxy show v4tov4
```

