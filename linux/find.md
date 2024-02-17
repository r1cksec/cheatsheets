### Remove all files with a specific extension
```
find . -type f -name "*.<bak>" -exec rm -f {} \;
```

### Remove empty directories (f for files)
```
find . -type d -empty -delete
```

