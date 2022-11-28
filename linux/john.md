### Source
https://github.com/openwall/john  

### Install
```
wget https://www.openwall.com/john/k/john-currentNumber-jumbo-1.tar.xz
tar -xf <file>
cd <johnRepo>/src
./configure && make
../run/john
```

### Show results
```
john <hashFile> --show --format=<format>
```

### Generate password list with permutations
```
john --stdout --wordlist=<wordListFile.txt> --rules=korelogic > <newListName.txt>
```

### Common hash type
```
krb5tgs
lm
nt
netntlmv2
mscash2 (domain cached credentials)
wpapsk (wpa2)
```

### Use already cracked passwords and more CPU
```
john --loopback --fork=4
```

### File containing cracked passwords
```
~/.john/john.pot
```

### List all formats
```
john --list=formats
```

### Example
```
john --wordlist=<wordlist> <fileToCrack> --rules=korelogic --format=NT
```

### Convert file for john
```
rar2john
zip2john
```

