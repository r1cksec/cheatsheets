### Source
https://github.com/dirkjanm/ROADtools

### Gather information
```
roadrecon auth -u <user>@<tenant>.onmicrosoft.com -p <password>
roadrecon gather
```

### Start graphical interface
```
roadrecon gui
```

### Generate Primary Key Token for current user session (get nonce using ARM API retrieve from memory using Get-AADIntUserPRTToken)
```
ROADToken.exe <nonce>
```

