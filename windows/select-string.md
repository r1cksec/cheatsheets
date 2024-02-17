### Grep for string in current directory (case sensitive and recursively)
```
Select-String <string> * -CaseSensitive -Recurse 2> $null
```

### Grep line before and after matching line
```
Select-String <string> * -Context 1,1
```

