### Execute command for each line in file
```
cat <file> | xargs -I % sh -c 'echo %; touch %'
```

