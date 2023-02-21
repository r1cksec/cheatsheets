### Disable ipv6
```
vim /etc/sysctl.conf                          

# insert
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1

# reload config
sysctl -p
```

