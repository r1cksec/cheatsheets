import string
import random

letters = string.ascii_lowercase
randStr = ""

# 8 chars
for l in range(8):
    randStr = randStr + random.choice(letters)

print(randStr)

