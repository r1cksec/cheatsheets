### Test manual for open relay
```
HELO <domain>
250 ...
Mail From: <user@domain>
250 2.1.0 Ok
Rcpt To: <user2@domain2>
250 2.1.5 Ok
Data
354 End data with <CR><LF>.<CR><LF>
Subject: <subject>
<content>
.
```

### Authenticate using base64
```
echo -n <user> | base64
echo -n <password> | base64
...
AUTH LOGIN
...
<userBase64>
...
<passwordBase64>
```

### Verify if user exists
```
VRFY <user>
```

### SPF (Sender Policy Framework)
```
dig +short txt <domain> | grep spf
```

### DMARC (Domain-based Message Authentication, Reporting & Conformance)
```
Polycies instruct mail server how to process mail for given domain if dkim or spf fails.

dig +short txt _dmarc.<domain>
```

### DKIM (DomainKeys Identified Mail)
```
Email is signed and validatet by foreign Mail Transfer Agent - key is held within TXT DNS-record.
Possible values for selector: selector1, selector2, selector3

dig +short txt selector1._domainkey.<domain>
```

