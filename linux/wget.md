### Clone a website
```
 k = convert local links to refer to local copies
 p = downloads all prerequisite files
 nH = disable downloading files into host-prefixed names folders
 N = clone time-stamps from source
wget -k -p -nH -N http://<rhost>
```

### Download file and write it to file
```
wget <rhost> -O <file>
```

### Print result to stdout
```
wget -qO- <rhost>
```

