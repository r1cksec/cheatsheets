### Create admin user
```
dscl . -create /Users/<user>
dscl . -append /Groups/admin GroupMembership <user>
```

