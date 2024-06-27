### Get version
```
call dbms.components() yield name, versions, edition unwind versions as version return name, version, edition;
```

