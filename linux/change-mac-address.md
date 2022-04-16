### Using ifconfig
```
ifconfig <interface> down
ifconfig <interface> hw ether <XX:XX:XX:XX:XX:XX>
ifconfig <interface> up
```

### Using ip
```
ip l set down dev <interfac>
ip l set dev <interface> address <XX:XX:XX:XX:XX:XX>
ip l set up dev <interface>
```

### Using airmon-ng
```
airmon-ng start <interface>
ifconfig <interface> down
macchanger -r <interface>
ifconfig <interface> up
```

