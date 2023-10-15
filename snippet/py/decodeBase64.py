import base64

encodedString = "c29tZVN0cmluZwo="
decodedBytes = base64.b64decode(encodedString)
decodedString = decodedBytes.decode('utf-8')
print(decodedString)

