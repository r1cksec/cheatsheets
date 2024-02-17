### Variant 1
```
system("whoami");
```

### Variant 2
```
$output=null;
exec('whoami', $output);
print_r($output);
```

### Variant 3
```
passthru ("whoami");
```

