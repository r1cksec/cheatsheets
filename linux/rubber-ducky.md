### Source
https://github.com/hak5/usbrubberducky-payloads

### German keyboard layout
```
java -jar duckencoder.jar -l de -i <duckyScript>.txt -o inject.bin
```

### Keys
```
ALT 
CTRL-ALT
CTRL | CONTROL 
CTRL-SHIFT 
DEL
ENTER
GUI | WINDOWS 
SHIFT 
```

### Wait for 5 seconds
```
DELAY 5000
```

### Wait 2 seconds between each command
```
DEFAULT_DELAY 200
```

### Press CTRL + S
```
CTRL S
```

### Repeat last command N times
```
REPEAT [N] 
```

### Open mac OS X Spotlight
```
GUI SPACE
STRING <string>
```

### Open CMD terminal
```
WINDOWS
STRING cmd.exe
```

### Press Windows key + R
```
GUI r
```

