### Create new session
```
screen -S <name>
```

### Log session to file
```
screen -S <name> -L -Logfile $(date +"%Y.%m.%d_%T") -s bash
PS1="$(whoami)@$(hostname)> "
```

### Detach
```
CTRL + a, d
```

### Kill session
```
CTRL + a, k
```

### Scroll
```
CTRL + a + Esc -> use arrow keys
```

### Go back from scrolling
```
q or Esc
```

### List session
```
screen -list
```

### Reattach
```
screen -r <name>
```

### Detach session
```
screen -d <name>
```

### Switch windows
```
CTRL + a + n
```

### New window
```
CTRL + a + c 
```

