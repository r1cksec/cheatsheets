### Source
https://github.com/sshuttle/sshuttle  

### Route all traffic via remote ssh host (-x to exclude subnet)
```
sshuttle -vr <user>@<rhost> 0/0 -x <subnet>
```

### Route traffic for specific subnet (-v verbose)
```
sshuttle -vr <user>@<rhost> <subnet>
```

