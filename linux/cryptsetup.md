### Create new encrypted device
```
cryptsetup luksFormat <device> -s 512 -h sha512 -i 5000 --type luks2
```

### Decrypt device
```
cryptsetup open <device> <encryptedDev>
```

### Encrypt device
```
cryptsetup close /dev/mapper/<encryptedDev>
```

### Add keyslot with new 1000 iterations
```
cryptsetup -i 1000 --key-slot <slot> luksAddKey <dev>
```

### List keys
```
cryptsetup luksDump  <device>
```

### Remove key
```
cryptsetup luksKillSlot <device> <slot>
```

### Create backup of luks header
```
cryptsetup luksHeaderBackup <device> --header-backup-file <file>
```

### Use luks backuped header
```
cryptsetup luksHeaderRestore <device> --header-backup-file <file>
```

