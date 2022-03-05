import re

string = "Some hello world is going on"

matchObj = re.match(r'Some [e-z]* [a-z]* is go.ng [o,i]n', string)

if matchObj:
    print("We have a match!")
else:
    print("No match!")

