### Show wireless network interfaces
```
iwconfig
```

### 
```
iw dev
iw dev <interface> link
```

### Check error logs
```
dmesg | grep iw
```

### List hardware network devices
```
lshw -class network
```

### List iwlwifi firmware
```
ls /lib/firmware/ | grep iwlwifi
```

### List informations about pci network controller
```
lspci -nnk | grep -A4 0280
```

### Show information about kernel module
```
modinfo iwlwifi
```

### Show kernel module status
```
lsmod | grep -i iw
```

