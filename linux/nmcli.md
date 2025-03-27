### Show if network manager manages interface
```
nmcli device
```

### Disable interface for network manager
```
nmcli device set <interface> managed no
```

### Show all connections
```
nmcli connection
```

### Delete connection
```
nmcli c delete <id>
```

### Show details of a connection
```
nmcli connection show <name>
```

### List available wifis (passiv)
```
nmcli device wifi list
```

### Rescan for available wifis (active)
```
nmcli device wifi rescan
```

