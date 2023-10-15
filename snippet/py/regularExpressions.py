import re

string = "Some hello world is going on"

matchObj = re.match(r'Some [e-z]* [a-z]* is go.ng [o,i]n', string)

if matchObj:
    print("We have a match!")
else:
    print("No match!")

htmlContent = '''
</head>
<body>
    <p>WordA 123 Example/></p>
    <p var=Foo>WordA 321 3xample</p>
    <p>WordB 101 Example Gibson</p>
    <p>010 Example - WordA. Website. All var</p>
'''

pattern = r'>(?:WordA|WordB)([^<]*)'

matches = re.findall(pattern, htmlContent)

# print all matches
for match in matches:
    print(match.strip())

