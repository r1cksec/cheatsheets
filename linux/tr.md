### remove null bytes from file
```
tr < <oldFile> -d '\000' > <newFile>
```

### convert to lower case
```
tr '[:upper:]' '[:lower:]'
```

### split single line at blank
```
tr " " "\n"
```

