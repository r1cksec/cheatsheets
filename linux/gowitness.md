### Install
```
go install github.com/sensepost/gowitness@latest
```

### Take single screenshot
```
gowitness --delay 15 --timeout 30 single --screenshot-path <pathToOutDir> <url>
```

### Create multiple screenshots using proxy
```
gowitness --proxy socks5://127.0.0.1:9050 --delay 15 --timeout 30 --screenshot-path <pathToOutDir> --threads 2 file -f <pathToUrls>
```

### List reachable hosts
```
gowitness report list
```

