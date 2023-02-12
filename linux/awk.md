### Use # as separating char, print 2. and 3. argument
```
cat <file> | awk -F '#' '{print $2,$3}'
```

### Get all user in group vboxusers
```
awk -F ':' '/vboxusers/{print $4}' /etc/group
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

