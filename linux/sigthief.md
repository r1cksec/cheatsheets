### Source
https://raw.githubusercontent.com/secretsquirrel/SigThief/master/sigthief.py  

### Take a Signature from a binary and add it to another binary
```
python3 sigthief.py -i <originalFile>.exe -t <targetFile>.exe -o <outFile>
```

### Save Signature to disk for later use
```
python3 sigthief.py -i <originalFile>.exe -r
```

### Use saved signature
```
python3 sigthief.py -s <signatureFile>.exe -t <targetFile>.exe
```

### Check if file has a signature (does not check validity)
```
python3 sigthief.py -i <originalFile>.exe -c
```

