### Show table structure
```
sqlite3 <file>.sqlite
sqlite> .tables
```

### Dump content of table
```
sqlite> .headers on
sqlite> .output <outputFile>.txt
sqlite> SELECT * FROM <table>;
sqlite> .exit
```

