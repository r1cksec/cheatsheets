### Source 
https://github.com/volatilityfoundation/volatility

### Determine profile (windows, mac, linux) based on KDBG search
```
volatility -f <file>.vmem imageinfo
```

### List active processes (use psscan for terminated processes and pstree fot parent-child tree)
```
volatility -f <file>.vmem pslist
```

### Dumpt process to file
```
volatility -f <file>.vmem procdump --dump-dir <output> -p <processId>
```

