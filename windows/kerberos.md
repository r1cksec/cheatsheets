### Terms
```
AS     - Authentication Service
KDC    - Key Distribution Center
KrbTGT - Kerberos Ticket-Granting Ticket
LTSK   - Long-Term Session Key
PAC    - Privilege Access Certificate
SPN    - Service Principle Name (contains ServiceClass and Hostname of server)
TGS    - Ticket-Granting Service
TGT    - Ticket-Granting Ticket (SPN of TGT is krbtgt/<domain>)
```

### Rough procedure
```
user > (ID, IP, lifetime) > AS
AS will check database for ID
AS > (ask for password) > user
user > (client password) > AS
AS > (TGS session key, liftime - encrypted with client password) > user
AS > (TGT - encrypted with TGS secret key) > user
user > (TGT, service) > TGS
TGS check if service exists and check validity of TGT
TGS > (Ticket for service - encrypted with service key) > user
user > (Ticket for service) > service 
```

### Golden ticket
```
TGT signed and encrypted by the hash of KrbTGT account
it can be used to impersonate any user with any privileges from even a non-domain machine
password change has no effect on this ticket
```

