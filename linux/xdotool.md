### Source
https://github.com/jordansissel/xdotool  

### Type some string
```
xdotool type <string>
```

### Press enter
```
xdotool key Return
```

### Press windows key
```
xdotool key Super_L
```

### Press arrow down
```
xdotool key Down
```

### Press alt followed by tab
```
xdotool keydown alt Tab ; xdotool keyup alt
```

### CTRL + t
```
xdotool key ctrl+t 
```

### Simulate mouse click
```
xdotool click <number>
```

### Numbers
```
1 Left click
2 Middle click
3 Right click
4 Scroll wheel up
5 Scroll wheel down
```

### Absolute mouse move
```
xdotool mousemove 100 100 
```

### Relative mouse move (positive)
```
xdotool mousemove_relative 30 30
```

### Relative mouse move (negative)
```
xdotool mousemove_relative -- -55 -10
```

### Get realtime mouse position
```
while true; do xdotool getmouselocation; sleep 0.2; clear; done
```

### Search for keynames
```
xev
```

### Key mapping on german keyboard
```
ö -> ;
Ö -> :
: -> >
/ -> &
- -> /
( -> *
) -> (
= -> )
? -> _
+ -> ]
# -> \
; -> <
: -> >
_ -> ?
' -> |
* -> }
ß -> -
ä -> '
ü -> [
```

