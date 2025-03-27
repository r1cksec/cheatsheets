### Install
```
go install github.com/sensepost/gowitness@latest
```

### Take single screenshot
```
gowitness scan --delay 15 --timeout 30 single --screenshot-path <pathToOutDir> --write-db --write-db-uri sqlite://<fullPathToDb> -u <url>
```

### Create multiple screenshots using proxy
```
proxychains gowitness scan file --delay 30 --timeout 45 --screenshot-path <pathToScreenshots> --write-db --write-db-uri sqlite://<fullPathToDb> -f <pathToHostFile>
```

### List informations about scanned hosts (run inside same directory like gowitness.sqlite3)
```
gowitness report server --screenshot-path <pathToScreenshots>
```

