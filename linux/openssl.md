### Source
https://github.com/openssl/openssl  

### Generate hash for /etc/passwd
```
openssl passwd -1 -salt <user> <password>
```

### Encrypt file
```
openssl enc -aes-256-cbc -pbkdf2 -k <password> <file> > <encryptedFile>
```

### Decrypt file
```
openssl enc -d -aes-256-cbc -pbkdf2 -k <password> <encryptedFile> > <file>
```

### Print information (pem)
```
openssl x509 -text -noout -in <file>.pem
```

### Print information (crl)
```
openssl crl -in <file>.crl -inform DER -text -noout
```

### Generate self signed certificate
```
openssl genrsa -out <keyfile>.key 4096
openssl req -new -key <keyfile>.key -out <signrequestfile>.csr
openssl x509 -req -days 365 -in <signrequestfile>.csr -signkey <keyfile>.key -out <certfile>.crt
```

