### Grep ipv4 addresses
```
grep -Eo '([0-9]*\.){3}[0-9]*' <file>
```

### Grep for html title, -o only matching part, -e match pattern
```
grep -oiE "<title>(.*)</title>"
```

### Grep logical or
```
grep -E "pattern1|pattern2" <file>
```

### Grep for strings inside binary file
```
grep --text "<string>" <file>
```

### Grep urls from HTML files
```
grep "<a " | awk -F "href=\"" '{print $2}' | cut -d "\"" -f 1 | sort -u
```

### Find lines in one file that are not in another
```
grep -v -f <file1> <file2>
```

