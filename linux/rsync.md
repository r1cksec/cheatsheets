### Source
https://github.com/WayneD/rsync  

### List files 
```
rsync -av --list-only rsync://<rhost>/<share> 
```

### Copy files via rsync without authentication
```
rsync -av rsync://<rhost>:<rport>/<share> <localDir>
```

### Copy files via rsync with authentication
```
rsync -av rsync://<user>@<rhost>:<rport>/<share> <localDir>
```

### Upload ssh key file
```
rsync -av ~/.ssh/ rsync://<user>@<rhost>/<rhome>/.ssh
```

