### Install software in dom0
```
sudo qubes-dom0-update <packet>
```

### Run command on another qube
```
qvm-run --pass-io <qubeName> '<command>'
```

### Copy file to dom0
```
qvm-run --pass-io <qubeName> 'cat <file> > <outFile>'
```

### Copy file to qube
```
qvm-copy-to-vm <qubeName> <file>
```

### List network information of qube
```
qvm-ls -n <qubeName>
```

### Extend disk space of standalone qube to 30GB
```
qvm-volume extend <qubeName> 30g
```

### Extend initial memory of qube to 8GB
```
qvm-prefs <qubeName> memory 8000
```

### Extend maximal memory of qube to 8GB
```
qvm-prefs <qubeName> maxmem 8000
```

### Watch memory usage
```
xentop
```

