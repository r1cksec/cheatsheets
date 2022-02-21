### source
https://github.com/exiftool/exiftool  

### print metadata of file
```
exiftool <file>
```

### add php code inside comment of png file
```
exiftool -Comment='<phpCode>' <file>.png
```

### grep for author and producer tags
```
exiftool * | grep -i "Producer\|Author" | sort -u
```

