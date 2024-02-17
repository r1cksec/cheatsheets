### Source
* https://github.com/osquery/osquery/releases

### Show available tables
```
.\osqueryi.exe ".tables"
```

### Print information about users using json format
```
.\osqueryi.exe --json "SELECT * FROM users"
```

### List running processes
```
.\osqueryi.exe "select pid, name, path from processes";
```

