### Read the NTFS ADS (Alternate Data Stream) of a file
```
Get-Content .\<file> -Stream Zone.Identifier
```

### Possible ZoneId values
```
0. - Local Computer
1. - Local Intranet
2. - Trusted Sites
3. - Internet
4. - Restricted Sites
```

