### Start bluetooth interface
```
hciconfig
hciconfig hci0 up
```

### Scan for devices
```
hcitool scan -all
```

### Will write results into current directory
```
btscanner
```

### For scanning over long period of time
```
bluelog -v
```

### Get position of target device
```
blueranger.sh hci0 <address>
```

### Debug connections
```
btmon
```

