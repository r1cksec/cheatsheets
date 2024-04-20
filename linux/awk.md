### Use # as separating char, print 2. and 3. argument
```
cat <file> | awk -F '#' '{print $2,$3}'
```

### Print last and second last match
```
cat <file> | awk -F '.' '{print $(NF-1)"."$NF}'
```

### Convert to lower case
```
awk '{print tolower($1)}'
```

### Print first two chars
```
awk '{print substr($1,1,2)}'
```

### Print line if less 10 chars
```
awk 'length($1) < 10 { print $1 }'
```

### Replace ; with :
```
awk -F ";" '{gsub(/;/, ":"); print}'
```

