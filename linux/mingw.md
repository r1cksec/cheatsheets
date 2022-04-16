### Compile windows binarie on linux
```
apt-get install mingw-w64
```

### Compile using gcc
```
i686-w64-mingw32-gcc <file> -o <file>.exe
```

### If winsock library is missing
```
i686-w64-mingw32-gcc <file> -o <file>.exe -lws2_32
```

