### Cut a mp4 file
```
ffmpeg -ss 00:01:05 -t 00:01:25 -i <file>.mp4 -t 10 -c:v libx264 -c:a copy <fileResult>.mp4
```

