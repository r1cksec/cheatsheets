### Source
https://github.com/maurosoria/dirsearch  

### Extensions apsx and php, r = recursive, timeout 1 second
```
python3 dirsearch.py -u http://<domain> -e aspx,php,html -x 403,404 -r --timeout=1 -o <pathToResult> --full-url
```

### Use proxy
```
--proxy=localhost:8080
```

### Use 3 seconds delay between requests of multiple threads
```
-s 3
```

