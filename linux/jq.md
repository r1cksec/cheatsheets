### Source
https://github.com/stedolan/jq

### Print distinguishedname of bloodhound users
```
cat <userFile>.json | jq '.data[].Properties.distinguishedname
```

### Print attributes of bloodhound user
```
cat <userFile>.json | jq '.data[].Properties | select(.name | ascii_downcase == "<name>")'
```

