### Failed log attemps (ssh)
```
/var/log/auth.log
```

### Get amount of failed connections by ip address
```
cat /var/log/auth.log | grep sshd | grep "Invalid user" | awk -F " " '{print $10}' | sort | uniq -c
```

### Failed log attemps
```
/var/log/secure
```

### Failed log attemps
```
/var/log/faillog
```

### HTTP requests
```
/var/log/httpd/
```

### Improper shutdown
```
/var/log/boot.log
```

