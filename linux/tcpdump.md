### filter traffic by ip address (bidirectional)
```
tcpdump -i <interface> host <ip>
```

### filter traffic by network and source port
```
tcpdump net <range> and src port <port>
```

### filter by icmp protocol
```
tcpdump icmp
```

### filter by TCP SYN flag (other flags tcp-rst, tcp-urg, tcp-ack, tcp-fin)
```
tcpdump 'tcp[tcpflags] == tcp-syn'
```

### filter HTTP cookie, -A print packet in ASCII, -l stdout buffered (see traffic while filtering)
```
tcpdump -vAls0 | grep 'Set-Cookie|Host:|Cookie:'
```

### capturing traffic for port 21 to 23
```
tcpdump -i <interface> tcp portrange <21-23>
```

### filter for icmp and bidirectional ip address, -X show packets
```
tcpdump -i <interface> icmp and host <ip> -X
```

