### failed log attemps (ssh)
```
/var/log/auth.log
```

### get amount of failed connections by ip address
```
cat /var/log/auth.log | grep sshd | grep "Invalid user" | awk -F " " '{print $10}' | sort | uniq -c
```

### failed log attemps
```
/var/log/secure
```

### failed log attemps
```
/var/log/faillog
```

### HTTP requests
```
/var/log/httpd/
```

### improper shutdown
```
/var/log/boot.log
```

