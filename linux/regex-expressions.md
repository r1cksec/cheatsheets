### Start of string
```
^
```

### 0 or more
```
+
```

### 1 or more
```
*
```

### 0 or 1
```
?
```

### Any char but \n
```
.
```

### Exactly 3
```
{3}
```

### 3 or more
```
{3,}
```

### 3 or 4 or 5
```
{3,5}
```

### 3 or 5
```
{3|5}
```

### 3 or 4 or 5
```
[345]
```

### Not 3 or 4
```
[^34]
```

### Lowercase a-z
```
[a-z]
```

### Uppercase A-Z
```
[A-Z]
```

### Digit 0-9
```
[0-9]
```

### Digit
```
\d
```

### Not digit
```
\D
```

### A-Z,a-z,0-9
```
\w
```

### Not A-Z,a-z,0-9
```
\W
```

### White space (\t\r\n\f)
```
\s
```

### Not (\t\r\n\f)
```
\S
```

### "rege" or "regx"
```
reg[ex]
```

### ''rege'' or ''regex''
```
regex?
```

### ''rege'' w/ 0 or more x
```
regex*
```

### ''rege'' w/ 1 or more x
```
regex+
```

### ''Regex'' or ''regex''
```
[Rr]egex
```

### Exactly 3 digits
```
\d{3}
```

### 3 or more digits
```
\d{3,)
```

### Any vowel
```
[aeiou]
```

### Numbers 03-25
```
(0[3-9] | 1[0-9] | 2[0-5])
```

