### create new session
```
tmux new -s <name>
```

### attach session
```
tmux attach
```

### list sessions
```
tmux ls
```

### kill session
```
tmux kill-session -t <name>
```

### attach session by name
```
tmux a -t <name>
```

### detach
```
CTRL + b, d
```

### scroll
```
Ctrl and b, PgUp
```

### save output to file
```
Ctrl and b, :
capture-pane -S -99999
save-buffer <file>
```

