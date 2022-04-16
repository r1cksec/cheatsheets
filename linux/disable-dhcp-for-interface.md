### Disable interface for network manager inside: /etc/NetworkManager/conf.d/unmanaged.conf
```
[keyfile]
unmanaged-devices=interface-name:<interface>
```

### Disable using dhcpcd service
```
systemctl disable dhcpcd@<interface>.service
```

### Disable ipv6 for specific interface
```
vim /etc/sysctl.d/40-ipv6.conf
net.ipv6.conf.<interface>.disable_ipv6 = 1
```

