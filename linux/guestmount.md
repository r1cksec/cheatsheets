### Source
https://github.com/libguestfs/libguestfs/blob/master/fuse/guestmount  

### Install
```
apt install guestmount
```

### Mount vhdx
```
guestmount --add <file>.vhdx -m </dev/sdX> /mnt/<mountpoint>
```

### Mount vhdx os
```
guestmount --add <file>.vhdx --inspector --ro /mnt/<mountpoint>
```

