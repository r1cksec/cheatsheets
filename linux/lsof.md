### Get information about listening services, -P port, -M local TCP/UDP ports, -l login names, -n network numbers
```
lsof -Pnl +M -i4
lsof -Pnl +M -i6
```

### Get information for specific port number
```
lsof -i :<port>
```

