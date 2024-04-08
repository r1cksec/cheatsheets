### Show ip address
```
ip -br a
```

### Get all interface names
```
ip -o l show | awk -F': ' '{print $2}'
```

### Start interface (up/down)
```
ip l set <interface> up
```

### Add interface with specific IP address
```
ip a add <XXX.XXX.XXX.XXX/XX> dev <interface>
```

### Remove ip address interface
```
ip a del <XXX.XXX.XXX.XXX/XX> dev <interface>
```

### Add a route
```
ip route add <XXX.XXX.XXX.XXX/XX> dev <interface>
```

### Add a route for specific gateway
```
ip route add <XXX.XXX.XXX.XXX/XX> dev <interface> via <gatewayIp>
```

### Delete all routes
```
ip route del 0/0
```

### Delete specific default route
```
ip route del default via <ip> 
```

### Get gateways
```
ip route | awk '/default/ { print $3 }'
```

### Show arp cache for interface
```
ip neigh show dev <interface>
```

### Set mtu valu
```
ip link set dev <interface> mtu <value>
```

