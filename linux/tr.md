### Remove null bytes from file
```
tr < <oldFile> -d '\000' > <newFile>
```

### Convert to lower case
```
tr '[:upper:]' '[:lower:]'
```

### Split single line at blank
```
tr " " "\n"
```

