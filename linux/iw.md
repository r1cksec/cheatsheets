### Show network interfaces
```
iw dev
```

### Show informations like frequency etc
```
iw list
```

### Scan nearby wifis
```
iw dev <interface> scan
```

### Define multiple logical interfaces
```
iw phy phy1 <interface> add mon type monitor flags none
```

### Connect to specific wifi
```
iw dev <interface> connect "<essid>"
```

### Disconnect
```
iw dev <interface> disconnect
```

### Analyse connections
```
iw event -t -f
```

### Set device to monitor mode (set device down before executing)
```
iw dev <interface> set type [monitor|managed]
```

