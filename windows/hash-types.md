### LM - way to store windows password
```
oldest password storage used by windows
stored inside SAM on a windows system
stored inside NTDS on domain controler
when dumped shown together with NTHash before colon
```

### NTHash (NTLM) - way to store windows password
```
pass the hash possible
stored inside SAM on a windows system
stored inside NTDS on domain controler
```

### NTLMv1 (Net-NTLMv1) - challenge response protocol
```
version 1 of the protocol uses both NT and LM hash
can be obtained using responder - no pass the hash possible, due challenge-response protocol
```

### NTLMv2 (Net-NTLMv2) - challenge response protocol
```
newer version of NTLMv1 - harder to crack
can be obtained using responder
```

