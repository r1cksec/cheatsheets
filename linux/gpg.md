### Generate gpg key
```
gpg --cert-digest-algo SHA512 --full-gen-key
```

### Get private id -> uid
```
gpg --list-secret-keys
```

### Get fingerprint of gpg keys
```
gpg --list-keys --with-fingerprint --with-colons
```

### Consider storing revocation file for key
```
gpg --output <file>.asc --gen-revoke <keyId>
gpg --list-secret-keys
gpg --keyserver <keyserver> --send-key <keyId>
```

### Export public key to file
```
gpg -a --export <keyId> > <file>.asc
```

### Import public gpg key
```
gpg --keyserver <keyserver> --search-keys <email>
```

### Export private key
```
gpg --armor --export-secret-key <keyId> > <file>.asc
```

### Import private key
```
gpg --import <file>.asc
```

### Change password of gpg
```
gpg --edit-key <keyId>
gpg> passwd
gpg> save
```

### Decrypt file
```
gpg --decrypt <encryptedFile>.gpg > <decryptedFile>
```

### Import key remotely
```
gpg --recv-key <id>
```

### Or import local key
```
gpg --import <file>.key
```
