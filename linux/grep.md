### Grep ipv4 addresses
```
grep -Eo '([0-9]*\.){3}[0-9]*'
```

### Grep for html title, -o only matching part, -e match pattern
```
grep -oiE "<title>(.*)</title>"
```

### Grep for subdomains
```
grep -RiEo '([a-zA-Z0-9-]+\.)*domain\.com' *
```

### Grep logical or
```
grep -E "pattern1|pattern2"
```

### Grep for strings inside binary file
```
grep --text "<string>" <file>
```

### Find lines in one file that are not in another
```
grep -v -f <file1> <file2>
```

### Print X char around string
```
grep -Eio ".{0,20}string.{0,20}"
```

### Search for files that does contain an e-mail address
```
grep -LEiR '([[:alnum:]_.-]+@[[:alnum:]_.-]+?\.[[:alpha:].]{2,6})' "$@"
```

### Delete files that matches the grep content
```
grep -liR "<string>" * | xargs -d '\n' rm -v
```

