### Extract from .p12 file
```
openssl pkcs12 -info -nodes -in <file>.p12
```

### Create .p12 file
```
openssl pkcs12 -export -inkey <privateKey>.key -in certificates.pem -name <file>.p12
```

### Decrypt
```
openssl smime -decrypt -in <mail>.asc -inkey <privateKey>.key
```

### Verfiy signature
```
openssl smime -decrypt -in <mail>.asc -inkey <privateKey>.key | openssl smime -verify
```

