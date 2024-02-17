$f = New-Object System.IO.FileStream C:\\<file>, Create, ReadWrite
$f.SetLength(50MB)
$f.Close()

