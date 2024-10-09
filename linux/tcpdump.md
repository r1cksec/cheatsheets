### Filter traffic by ip address (bidirectional)
```
tcpdump -i <interface> host <ip>
```

### Filter traffic by network and source port
```
tcpdump net <range> and src port <port>
```

### Filter traffic by two source hosts
```
tcpdump -i <interface> -nn src host <ip> or src host <ip>
```

### Filter by icmp protocol
```
tcpdump icmp
```

### Filter by TCP SYN flag (other flags tcp-rst, tcp-urg, tcp-ack, tcp-fin)
```
tcpdump 'tcp[tcpflags] == tcp-syn'
```

### Filter HTTP cookie, -A print packet in ASCII, -l stdout buffered (see traffic while filtering)
```
tcpdump -vAls0 | grep 'Set-Cookie|Host:|Cookie:'
```

### Capturing traffic for port 21 to 23
```
tcpdump -i <interface> tcp portrange <21-23>
```

### Filter for icmp and bidirectional ip address, -X show packets
```
tcpdump -i <interface> icmp and host <ip> -X
```

