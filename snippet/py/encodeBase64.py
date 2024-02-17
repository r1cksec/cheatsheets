import base64

someString = "SomeString"
encodedBytes = base64.b64encode(someString.encode("utf-8"))
base64String = encodedBytes.decode('utf-8')
print(base64String)

