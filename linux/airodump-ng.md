### Source
https://github.com/aircrack-ng/aircrack-ng  

### 2.4 GHz
```
Channel n = 1,2,...,13
```

### 5 GHz
```
Channel n = 36,40...64; 100,...,144; 149-165
```

### Sniff on 5GHz band (possible band values: a b g)
```
airodump-ng --band a
```

### Sniff on specific channel 
```
airodump-ng <interface> -w <result> -c <channel>
```

### The option -a list only associated devices - IOS und android uses randomized mac addresses as far as they are not connected to wifi 
```
airodump-ng <interface> -a
```

### Get uptime and vendor 
```
airodump-ng <interface> --uptime --manufacturer
```

### Get into interactive mode
```
tab
```

### Pause execution
```
blank
```

### Highlight current ssid with color
```
m
```

