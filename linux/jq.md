### Source
https://github.com/stedolan/jq

### Print one line json file as multiple lines
```
jq <file>.json
```

### Retrieve values from key
```
{
  "pos1": {
    "key1": "val1",
    "key2": "val2"
  },
  "key3": "val3"
}

jq ".pos1 .key1" <file>.json
```

### Retrieve multiple values from key
```
cat <file>.json | jq -r ".pos1 .key1, .key3"
```

### Retrieve values from array (example: name of computer from bloodhound json result)
```
cat <file>.json | jq -r ".data[] .Properties .name"
```

### Retrieve multiple values from array 
```
jq ".data[] .Properties | .name, .distinguishedname, .operatingsystem, .serviceprincipalnames" <file>.json
```

