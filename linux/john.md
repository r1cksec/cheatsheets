### Source
https://github.com/openwall/john  

### Install
```
git clone https://github.com/openwall/john
apt install libssl-dev -y
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

### List all formats
```
john --list=formats
```

### Using korelogic rules
```
john --wordlist=<wordlist> <hashFile> --rules=korelogic --format=NT
```

### Using specific session and pot
```
john <hashFile> --session=<sessionName> --pot=<potFile>
```

### Convert file for john
```
rar2john
zip2john
```

