$StringToEncode = "Encode this"
$EncodedString = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($StringToEncode))

$DecodedString = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($EncodedString))
Write-Host "Encoded String:" $DecodedString

