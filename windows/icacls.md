### Add all permissions to a file
```
icacls <file> /grant Everyone:F
```

### Add read permissions for specific user
```
icacls <file> /grant:R "<user>:(R)"
```

### Reset permissions
```
icacls <file> /reset
```

### Set ssh key permissions
```
icacls C:\Users\<user>\.ssh /inheritance:r /grant:r <user>:(F)
icacls C:\Users\<user>\.ssh\id_rsa /inheritance:r /grant:r <user>:(F)
```

