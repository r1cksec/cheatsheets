import sys
from ldap3 import Connection, NTLM

# check amount of passed arguments
if (len(sys.argv) != 5):
    print("usage: {} domainController user domain password".format(sys.argv[0]))
    sys.exit(1)
 
domainController = sys.argv[1]
user = sys.argv[2]
domain = sys.argv[3]
password = sys.argv[4]
 
conn = Connection(domainController, user=user + "\\" + user, password=password, authentication=NTLM, auto_bind=True)

conn.search(",". join(["DC="+x for x in domain.split(".")]), '(ms-MCS-AdmPwd=*)', attributes=['cn', 'ms-MCS-AdmPwd', 'operatingSystem', 'dNSHostName'])

