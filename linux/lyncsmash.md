### Source
https://github.com/nyxgeek/lyncsmash  

### Prepare python2 virtual environment
```
virtualenv -p /usr/bin/python2.7 lyncsmash && source lyncsmash/bin/activate && pip install requests
```

### Time based user enumeration or password spray
```
./lyncsmash.py enum -U <userFile> -p "<password>" -d <domainIntern> -H <rhost>
```

