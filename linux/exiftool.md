### Source
https://github.com/exiftool/exiftool  

### Print metadata of file
```
exiftool <file>
```

### Add php code inside comment of png file
```
exiftool -Comment='<phpCode>' <file>.png
```

### Grep for author and producer tags
```
exiftool * | grep -i "Producer\|Author" | sort -u
```

