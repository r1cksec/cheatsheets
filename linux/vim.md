### Replace all pattern (global)
```
:%s/<oldPattern>/<newPattern>/g
```

### Find pattern
```
:/<pattern>
```

### Run terminal command from within vim
```
:!<command>
```

### Start shell from within vim
```
:<shell>
```

### Edit another file
```
:e <file>
```

### Edit another file in new tab
```
:tabnew <file>
```

### Visuel line mode
```
shift + v
```

### Visuel char mode
```
ctrl + v
```

### For inserting
```
shift + i
type stuff
esc
```

### Copy
```
y
```

### Cut
```
x
```

### Copy current line
```
yy
```

### Copy from one vim editor to another
```
"+y or "+yy for only current line
"+p for pasting
```

### Remove all lines containing pattern
```
:g/<pattern>/d
```

### Undo
```
u
```

### Redo
```
ctrl + r
```

### Remove from current line 10 lines to the bottom
```
10dd
```

### Switch line (when the line is long)
```
gj
or
gk
```

### Go to next autocompletion
```
ctrl + n
```

### Go to previous autocompletion
```
ctrl + p
```

### Dump content as hex
```
%!xxd
```

### Reverse content back from hex
```
%!xxd -r
```

### Record command and typing for a (or other char)
```
esc
q
a
type whatever you want and finish recording with
q
```

### Repeat recorded buffer from a (or @<otherChar>)
```
@a 
```

### Repeat last used recorded buffer
```
@@
```

### Repeat recorded buffer XX times
```
XX@a
```

### Jump to next placeholder using ulti snips
```
ctrl + j
```

### Delete chars until specific char
```
d + f + <char>
```

### Split horizontal, vertical
```
Ctrl + w, v
```

### Close splitted window
```
CTRl + w, q
```

### Edit file as sudo after opening
```
:w !sudo tee %
```

### Remove word around cursor
```
daw
```

### Remove word to the right
```
dw
```

### Append to end of line
```
shift + a
```

### Write output of command directly to vim
```
:read ! <command>
```

### Increment next integer by 1
```
1 + CTRL + A
```

