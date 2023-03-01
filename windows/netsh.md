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

