### Source
https://github.com/nmap/nmap  

### For bypassing firewalls
```
-sN (Null scan; do not set RST, SYN or ACK bit)
-sF (FIN scan)
-sW (Window scan; pos = open, neg = closed)
-T0 (Timing; 0 = paranoid 5 minutes between each probe, 5 = insane)
-g/--source-port <port> (send from this port>
--data <hex string>     (append a custom payload to packets)
--data-string <string>  (append a custom ASCII string to packets)
--data-length <num>     (append random data to packets)
--badsum                (send packets with a bogus TCP/UDP/SCTP checksum)
```

### Custom flags
```
--scanflags URG,ACK,PSH,RST,SYN,FIN
```

### Intense scan - use it for capture the flags
```
nmap -A -sV -O --min-rate 600 --script "(vuln or exploit or auth) and not broadcast" -oA <rhost>-vuln-scripts <rhost> -p- -vv --open
```

### Resume stopped scan (need normal (-oN) or grepable (-oG) format)
```
nmap --resume <file>
```

### Versions intensity 0-9 (9 highest)
```
nmap --version-intensity 4 <rhost>
```

### Advanced scan for detecting most of the services/os and versions
```
nmap --min-rate 500 -sS -sV -O -sC -iL <file> -oA <file>-sS-sV-O-sC-1k-ports
```

### Get information about scripts
```
nmap --script-help "*ms* and *sql*"
```

### Scan NTLM authentication
```
nmap -p 443 --script http-ntlm-info --script-args http-ntlm-info.root=/<path>/ <rhost>
```

