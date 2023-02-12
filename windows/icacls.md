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

