### Inverse search
```
whois -i <field> "<value>"
```

### Possible fields:
```
abuse-c
abuse-mailbox
admin-c
auth,author
fingerpr
form
irt-nfy
local-as
mbrs-by-ref
member-of
mnt-by
mnt-domains
mnt-irt
mnt-lower
mnt-nfy
mnt-ref
mnt-routes
notify
nserver
org
origin
person
ping-hdl
ref-nfy
tech-c
upd-to
zone-c
```

### Grep for IP addresses related to AS number
```
whois -h whois.radb.net -- '-i origin <asn>' | grep -Eo "([0-9.]+){4}/[0-9]+" | uniq
```
