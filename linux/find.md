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

### Copy all files from subfolders to current directory
```
find . -mindepth 2 -type f -exec cp -t . -- {} +
```

