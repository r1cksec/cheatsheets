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

### Enable listening on low port number without root permissions
```
sysctl net.ipv4.ip_unprivileged_port_start=0
```

