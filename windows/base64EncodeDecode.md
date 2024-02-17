### Encode string as base64
```
$StringToEncode = "Foo"
$EncodedString = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($StringToEncode))
```

### Decode base64 string
```
$DecodedString = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($EncodedString))
Write-Host "Encoded String:" $DecodedString
```

### Encode file as base64
```
$FileName = "<file>"
$Base64string = [Convert]::ToBase64String([IO.File]::ReadAllBytes($FileName))
[IO.File]::WriteAllBytes($FileName, [Convert]::FromBase64String($Base64string))
```

