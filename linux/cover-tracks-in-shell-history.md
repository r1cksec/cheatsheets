### Clear auth.log file
```
echo "" > /var/log/auth.log
```

### Clear current user bash history
```
echo "" > ~/.bash_history
```

### Clear current session history
```
history -c
```

### Set history max lines to 0
```
export HISTFILESIZE=O
```

### Set history max commands to 0
```
export HISTSIZE=O
```

### Disable hisotry logging (need to logout to take effect)
```
unset HISTFILE
```

### Kill current session
```
kill -9 $$
```

### Permanently send all bash history commands to /dev/null
```
ln /dev/null ~/.bash–history -sf
```

