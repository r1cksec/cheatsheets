### Add user to sudo group
```
/sbin/usermod -a -G sudo <user>
```

### Rename user
```
usermod -l <newName> <oldName>
```

### Rename home directory
```
usermod -d <pathNewHomeDir> -m <pathOldHomeDir>
```

