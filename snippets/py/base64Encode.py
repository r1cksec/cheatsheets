import base64

# ascii
someString = "test"
stringAsBytes = someString.encode("ascii")
stringAsBase64 = base64.b64encode(stringAsBytes)
stringAsBase64Ascii = stringAsBase64.decode("ascii")
print(stringAsBase64Ascii)

# utf-8
stringAsUtf8 = "dGVzdAo=".encode('utf-8')
decodedData = base64.decodebytes(stringAsUtf8)
print(decodedData)

