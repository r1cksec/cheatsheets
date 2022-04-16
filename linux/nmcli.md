### Show if network manager manages interface
```
nmli device
```

### Disable interface for network manager
```
nmcli device set <interface> managed no
```

### Show all connections
```
nmcli connection
```

### List available wifis (passiv)
```
nmcli device wifi list
```

### Rescan for available wifis (active)
```
nmcli device wifi rescan
```

