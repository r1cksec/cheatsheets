function AesEncrypt([byte[]]$BytesToEncrypt)
{

    [byte[]] $encryptedBytes = @()
    [System.IO.MemoryStream] $MemoryStream = New-Object System.IO.MemoryStream
    [System.Security.Cryptography.RijndaelManaged] $AesObject = New-Object System.Security.Cryptography.RijndaelManaged
    $AesObject.KeySize = 256;
    $AesObject.BlockSize = 128;
    [System.Security.Cryptography.Rfc2898DeriveBytes] $Key = New-Object System.Security.Cryptography.Rfc2898DeriveBytes($AesPassword, $AesSalt, 1000);
    $AesObject.Key = $Key.GetBytes($AesObject.KeySize / 8);
    $AesObject.IV = $Key.GetBytes($AesObject.BlockSize / 8);
    $AesObject.Mode = [System.Security.Cryptography.CipherMode]::CBC
    $CryptoStream = New-Object System.Security.Cryptography.CryptoStream($MemoryStream, $AesObject.CreateEncryptor(), [System.Security.Cryptography.CryptoStreamMode]::Write)

    try
    {
        $CryptoStream.Write($BytesToEncrypt, 0, $BytesToEncrypt.Length);
        $CryptoStream.Close();
    }
    catch [Exception]
    {
        Write-Host "Error occured while encrypting file!"
    }

    $EncryptedContent = $MemoryStream.ToArray();
    return $EncryptedContent
}

function AesDecrypt([byte[]]$BytesToDecrypt)
{
    [byte[]]$DecryptedBytes = @();
    [System.IO.MemoryStream] $MemoryStream = New-Object System.IO.MemoryStream
    [System.Security.Cryptography.RijndaelManaged] $AesObject = New-Object System.Security.Cryptography.RijndaelManaged
    $AesObject.KeySize = 256;
    $AesObject.BlockSize = 128;
    [System.Security.Cryptography.Rfc2898DeriveBytes] $Key = New-Object System.Security.Cryptography.Rfc2898DeriveBytes($AesPassword, $AesSalt, 1000);
    $AesObject.Key = $Key.GetBytes($AesObject.KeySize / 8);
    $AesObject.IV = $Key.GetBytes($AesObject.BlockSize / 8);
    $AesObject.Mode = [System.Security.Cryptography.CipherMode]::CBC
    $CryptoStream = New-Object System.Security.Cryptography.CryptoStream($MemoryStream, $AesObject.CreateDecryptor(), [System.Security.Cryptography.CryptoStreamMode]::Write)

    try
    {
        $CryptoStream.Write($BytesToDecrypt, 0, $BytesToDecrypt.Length)
        $CryptoStream.Close()
    }
    catch [Exception]
    {
        Write-Host "Error occured while decrypting file!"
    }

    $DecryptedBytes = $MemoryStream.ToArray();
    $ClearText = [System.Text.Encoding]::UTF8.GetString($DecryptedBytes)
    return $ClearText
}

[byte[]] $AesSalt = @(1,2,3,4,5,6,7,9,10,11,254,253,252)
$AesPassword = "SomePassword"
$AesPassword = [system.text.encoding]::ASCII.GetBytes($AesPassword)

# encrypt
[byte[]]$encryptedContent = $null
$ClearTextContent = "Some String"
$ClearTextBytes = [system.text.encoding]::ASCII.GetBytes($ClearTextContent)
$EncryptedContent = AesEncrypt($ClearTextBytes)
$EncryptedBase64 = [Convert]::ToBase64String($EncryptedContent)
$EncryptedBase64 | Export-Clixml file.xml

# decrypt
[byte[]]$DecryptedContent = $null
$RawContent = Import-Clixml file.xml
$EncryptedContent = [Convert]::FromBase64String($RawContent)
$Cleartext = AesDecrypt($EncryptedContent)
$Cleartext

