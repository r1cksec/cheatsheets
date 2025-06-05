### Source
https://github.com/stedolan/jq

### Print in csv format and replace char ;
```
cat <file>.json | jq -r '"\(.key1) ; \(.key | gsub(";"; "_"))"'
```

### Print side by side
```
jq -r '.key1[] | [.key2, .key3, .key4] | join(" ")' <file>.json
```

### Print key1 if key1 exists, else key2
```
cat <file>.json | jq -r 'if has("key1") then .key1 else .key2 end'
```

### Use variable inside jq statement
```
var="content"
echo "<json>" | jq -r --arg vari "${var}" 'select(.key == $vari) | .key2'
```

### Do not print null values
```
cat <file>.json | jq -r ".matches[] | .key[], .subkey | select(. != null)" 
```

### Print distinguishedname of bloodhound users
```
cat <userFile>.json | jq '.data[].Properties.distinguishedname
```

### Print attributes of bloodhound user
```
cat <userFile>.json | jq '.data[].Properties | select(.name | ascii_downcase == "<name>")'
```

### Print server computer objects from ADExplorerSnapshot.py
```
cat <file_computers>.json | jq -r '.data[] | select(.Properties.distinguishedname | ascii_downcase | test("server")) | .Properties .name' | sort -u
```

