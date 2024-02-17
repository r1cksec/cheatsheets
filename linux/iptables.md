## Tables

### filter
```
This is the default chain.
Responsible for filtering packets based on criteria such as the source and destination IP addresses, protocols, and ports.

Built-in chains:
INPUT
OUTPUT
FORWARD
```

### nat
```
Used for Network Address Translation.

Built-in chains:
PREROUTING
POSTROUTING
OUTPUT
```

### mangle
```
Used to modify packet headers in various ways, such as changing the time-to-live (TTL) field or the type of service (TOS) field.

Built-in chains:
PREROUTING
POSTROUTING
INPUT
OUTPUT
FORWARD
```

### raw
```
Used to set up exemptions from connection tracking for certain packets, such as ICMP packets or packets that are part of a VPN tunnel.

Built-in chains:
PREROUTING
OUTPUT
```

### Rules
```
ACCEPT: allow the packet to pass through the firewall
DROP: drop the packet
REJECT: drop and send an error message to the sender
LOG: log the packet before passing it through
SNAT: rewrite the source IP address and/or port number of outgoing packets
DNAT: rewrite the destination IP address and/or port number of incoming packets
REDIRECT: redirect incoming packets to a different port and/or IP address
```

### List rules of INPUT chain
```
iptables -L INPUT -v
```

### List rules of NAT table
```
iptables -L -t nat --line-numbers
```

### Add new rule (-I insert rule at beginning of chain, -A append to end)
```
iptables -I OUTPUT -o <interface> -j DROP
```

### Delete rule
```
iptables -D OUTPUT <ruleNumber>
```

### Debugging
```
watch iptables -t nat -L -v -n
```

### Traffic redirection
```
iptables -t nat -A PREROUTING -p tcp --dport <port> -j DNAT --to-destination <ip>
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

