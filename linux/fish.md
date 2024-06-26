### History file
```
~/.local/share/fish/fish_history
```

### Print history with timestamps
```
history -t -R
```

### Equivalent to bashrc
```
~/.config/fish/config.fish
```

### Define and export variable
```
set -x varName "content"
```

### Delete word to the right
```
Alt + d
```

### Delete word to the left
```
CTRL + w
```

### Set new prompt
```
function fish_prompt; echo (whoami)@(hostname) (date +"%Y.%m.%d_%T")" > "; end
```

