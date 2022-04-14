$S256 = New-Object System.Security.Cryptography.SHA256CryptoServiceProvider
$SecureString = Read-Host -AsSecureString
$Key = $S256.ComputeHash(@(85,53,97,115,102,45,80,79,45,68,57,79,79,51,50,57))
$StandardString = ConvertFrom-SecureString $SecureString -Key $Key

$SecureString = $StandardString | ConvertTo-SecureString -Key $Key
$Data = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecureString))
echo $Data

