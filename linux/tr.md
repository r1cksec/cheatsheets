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

### Remove all non-printable ASCII characters
```
tr -cd '\11\12\40-\176'
```

