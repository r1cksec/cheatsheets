### Start ssh file transfer (linux)
```
sshfs <user>@<rhost>:/<pathToShare> <pathToLocalDirectory>
```

### Unmount share
```
fusermount -u <pathToLocalDirectory>
```

### Start ssh file transfer (windows)
```
net use X: \\sshfs\<user>@<rhost>
```

### Unmount share
```
net del X:
```

