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

