### Target description
```
DNAT - Destination Network Address Translation (Destinationadress and -ports)
SNAT - Source Network Address Translation (Sourceaddress and -ports)
MASQUERADE - Route between networks
DROP - drop packets
Reject - drop packets with icmp respsonse (INPUT OUTPUT FORWARD)
```

### Debugging
```
watch iptables -t nat -L -v -n
```

### Traffic redirection
```
iptables -t nat -A PREROUTING -p tcp --dport <port> -j DNAT --to-destination <ip>
```

### Drop all outgoing packets (use -A for append, -I for insert)
```
iptables -I OUTPUT -o <interface> -j DROP
```

### Remove rules
```
iptables -t nat -L --line-numbers
iptables -L OUTPUT --line-numbers
```

### Delete first rule of given chain (OUTPUT).
```
iptables -D OUTPUT 1
```

### Rate limiting ssh connections
```
iptables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --set
iptables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --update --seconds 60 --hitcount 4 -j DROP
```

### Configure limiting ssh connections for ipv6
```
ip6tables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --set
ip6tables -I INPUT -p tcp --dport 22 -i eth0 -m state --state NEW -m recent --update --seconds 60 --hitcount 4 -j DROP
```

