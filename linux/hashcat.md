### source
https://github.com/hashcat/hashcat  

### wordlist crack, -m hash type, -a attack mode
```
hashcat -m 0 -a 0 <fileToCrack> <wordlist>
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

### bruteforce charsets
```
?l = a-z
?u = A-Z
?d = 0-9
?s = !-~
?a = ?l?u?d?s
```

### example all alphanumeric chars for 6 chars
```
hashcat -a 3 <fileToCrack> -1 ?l?u?d ?1?1?1?1?1?1 -m <hashType>
```

### some hashtypes
```
11 = Joomla < 2.5.18
12 = PostgreSQL
100  = SHA1
110  = sha1($pass.$salt)
120  = sha1($salt.$pass)
200  = MySQL323
300  = MySQL4.1/MySQL5
1000 = NTLM
1400 = SHA256
1410 = sha256($pass.$salt)
1420 = sha256($salt.$pass)
2100 = Domain Cached Credentials (DCC), MS Cache - format: $DCC2$10240#<user>#<hash>
2500 = WPA/WPA2
5600 = NetNTLMv2
7300 = IPMI2 RAKP HMAC-SHA1
7900 = Drupal7
11100 = PostgreSQL Challenge-Response Authentication (MD5)
11200 = MySQL Challenge-Response Authentication (SHA1)
11400 = SIP digest authentication (MD5)
13100 = Kerberos 5 TGS-REP (etype 23)
13400 = Keepass (kdbx file) - format: :$keepass$*2*<int>*<hash>
18200 = Kerberos 5 AS-REP (etype 23)
19600 = Kerberos 5 TGS-REP (etype 17)
19700 = Kerberos 5 TGS-REP (etype 18)
```

### cracking kerberoast, -O optimize kernel but also limits password length, -w workload high (speeds up but can also affect availability)
```
hashcat -a 0 -o <resultFile> -m 13100 <fileToCrack> <wordlist> -O -r <pathToRule> -w 3
```

### cracking wpa2
```
cap2hccapx <input>.pcap <output>.hccapx [<essid1>] [<essid2>]
hashcat -m 2500 -a 0 <wordlist> <file>.hccapx
```

### show results
```
hashcat -m <hashId> <resultFile> --show
```

