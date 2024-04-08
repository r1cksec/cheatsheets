### Remove all files with a specific extension
```
find . -type f -name "*.<txt>" -exec rm -f {} \;
```

### Remove empty directories (f for files)
```
find . -type d -empty -delete
```

### Find biggest files
```
find . -type f -exec ls -lh {} + | awk '{ print $9 ": " $5 }' | sort -k2,2h | tail -n 10
```

