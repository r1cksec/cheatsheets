import sys
from passlib.hash import nthash

# pip install passlib

if (len(sys.argv) != 2):
    print("usage: {} string".format(sys.argv[0]))
    sys.exit(1)

def hashing_NTLM(providedPassword):
    return nthash.hash(providedPassword)

hashedPassword = hashing_NTLM(sys.argv[1])
print(hashedPassword)


