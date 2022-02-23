### run base64 encoded command
```
$str = "<command>"
$base = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($str))
powershell -exec bypass -enc $base
```

