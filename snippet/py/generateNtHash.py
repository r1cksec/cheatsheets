import hashlib,binascii
import sys

# check amount of passed arguments
if (len(sys.argv) != 2):
    print("usage: {} string".format(sys.argv[0]))
    sys.exit(1)

hash = hashlib.new('md4', sys.argv[1].encode('utf-16le')).digest()
print (binascii.hexlify(hash))


