### Source
https://github.com/hashcat/hashcat  

### Crack using multiple wordlists and rules
```
hashcat --username -a 0 -o <resultFile> -m <mode> <hashFile> <wordlist1> <wordlist2> --potfile-path <potfile> --session <session> -r <rule1> <rule2>
```

### Attack modes
```
0 = Straight
1 = Combination (combines 2 wordlists)
2 = Toggle-Case
3 = Brute-force
4 = Permutation
5 = Table-Lookup
```

### Bruteforce charsets
```
?l = a-z
?u = A-Z
?d = 0-9
?s = !-~
?a = ?l?u?d?s
```

### Salt format
```
hash:salt
```

### Example all alphanumeric chars from 1 to 6 chars
```
hashcat -o <outfile> -m <hashType> -a 3 <fileToCrack> -1 ?l?u?d ?1?1?1?1?1?1 -m <hashType> --increment
```

### Some hashtypes
```
11 = Joomla < 2.5.18
12 = PostgreSQL
100  = SHA1
110  = sha1($pass.$salt)
120  = sha1($salt.$pass)
200  = MySQL323
300  = MySQL4.1/MySQL5
1000 = NTLM format: User:UID:LM:NTLM:::
1400 = SHA256
1410 = sha256($pass.$salt)
1420 = sha256($salt.$pass)
1700 = SHA-512
1800 = sha512crypt $6$, SHA512 (Unix)
2100 = Domain Cached Credentials (DCC), MS Cache - format: $DCC2$10240#<user>#<hash>
2500 = WPA/WPA2
5600 = NetNTLMv2
7300 = IPMI2 RAKP HMAC-SHA1
7900 = Drupal7
11100 = PostgreSQL Challenge-Response Authentication (MD5)
11200 = MySQL Challenge-Response Authentication (SHA1)
11400 = SIP digest authentication (MD5)
13100 = Kerberos 5 TGS-REP (etype 23)
13400 = Keepass (kdbx file) - format: $keepass$*2*<int>*<hash>
18200 = Kerberos 5 AS-REP (etype 23)
19600 = Kerberos 5 TGS-REP (etype 17)
19700 = Kerberos 5 TGS-REP (etype 18)
```

### Crack kerberoast, -O optimize kernel but also limits password length, -w workload high (speeds up but can also affect availability)
```
hashcat -a 0 -o <resultFile> -m 13100 <hashFile> <wordlist> -O -r <ruleFile> -w 3
```

### Crack WPA2
```
cap2hccapx <input>.pcap <output>.hccapx [<essid1>] [<essid2>]
hashcat -m 2500 -a 0 <wordlist> <file>.hccapx
```

### Crack NTLM
```
hashcat -a 0 -o <resultFile> -m 1000 <hashFile> <wordlist> --potfile-path <potFile> --session <sessionName> --quiet
```

### Show results
```
hashcat -m <hashId> <resultFile> --show
```

### List hash formats
```
hashcat --hash-info
```

