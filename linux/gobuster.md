### Source
https://github.com/OJ/gobuster  

### Bruteforce directory (-x extension, -k insecuressl, -e expanded)
```
gobuster dir -u <url>:<rport> -w <wordlist> -x .aspx,.php,.html -k -e
```

### Bruteforce directory politely (exclude all response with given length and all given status codes)
```
gobuster dir -u <url>:<rport> --delay 1000ms -w <wordlist> -x .aspx,.php,.html,.txt -k -e -t 1 -o <outputFile> --exclude-length <responseLength> --status-codes-blacklist <statusCode>
```

