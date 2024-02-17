### Adjust file: /etc/network/interfaces
```
auto <interface>
iface <interface> inet static
    address <ipv4>
    netmask <netmask>
    gateway <gateway>

iface <interface> inet6 static
    address <ipv6>
    netmask 64
    gateway fe80::1
    accept_ra 0
    autoconf 0
    privext 0
```

