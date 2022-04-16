### Source
https://github.com/aircrack-ng/aircrack-ng  

### Convert cap file to hashcat format
```
aircrack-ng -J <file> <result>.cap
```

### Crack wpa2 
```
aircrack-ng <result>.cap -w <wordlist>
```

