### Create new session
```
tmux new -s <name>
```

### Attach session
```
tmux attach
```

### List sessions
```
tmux ls
```

### Kill session
```
tmux kill-session -t <name>
```

### Attach session by name
```
tmux a -t <name>
```

### Detach
```
CTRL + b, d
```

### Scroll
```
Ctrl and b, PgUp
```

### Save output to file
```
Ctrl and b, :
capture-pane -S -99999
save-buffer <file>
```

