### Source
https://github.com/mxrch/gitfive

### Enumerate username for list of e-mail addresses
```
gitfive emails <emailFile>
```

### Grep github account names from results
```
cat <result> | grep "@" | grep -v "@@\|@mxrchreborn" | cut -d "@" -f 3 | cut -d " " -f 1
```

