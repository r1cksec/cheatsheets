### Remove comments from powershell script
```
sed '/<#/,/#>/d' <file>.ps1
```

### Delete lines containing string
```
sed '/string/d' <file>
```

### Delete empty lines
```
sed -i '/^[[:space:]]*$/d' <file>
```

### Add string to each line
```
sed 's/$/<string>/g' <file>
```

### Print lines between 2 patterns
```
sed -n '/<pattern1>/,/<pattern2>/p' <file>
```

### Print only words longer than 3 chars
```
sed -r '/^.{,3}$/d' <file>
```

### Remove leading chars
```
echo "00123" | sed 's/^0*//'
```

### Remove leading white spaces
```
echo "    some string" | sed -e 's/^[[:space:]]*//'
```

# Edit file in place
```
sed -i 's/replaceThis/replaceWith/g' <file>
```

