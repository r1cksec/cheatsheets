### Disable ipv6
```
vim /etc/default/grub

# insert:
GRUB_CMDLINE_LINUX_DEFAULT="ipv6.disable=1 quiet splash"
GRUB_CMDLINE_LINUX="ipv6.disable=1"

# reload
update-grub
```

