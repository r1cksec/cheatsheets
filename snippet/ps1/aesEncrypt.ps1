$iniVec = [byte[]]@(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160)

function AesEncrypt($bytesToEncrypt)
{
    $password = "SomePassword"
    $passwordBytes = [System.Text.Encoding]::UTF8.GetBytes($password)

    # key derivation
    $pbkdf2 = New-Object System.Security.Cryptography.Rfc2898DeriveBytes -ArgumentList (
        $passwordBytes,
        $iniVec, # salt
        1000,
        [System.Security.Cryptography.HashAlgorithmName]::SHA256
    )

    # generates key of 32 bytes
    $key = $pbkdf2.GetBytes(32)

    $aes = [System.Security.Cryptography.Aes]::Create()
    $aes.Key = $key
    $aes.IV = $iniVec

    $encryptor = $aes.CreateEncryptor()
    $ms = New-Object System.IO.MemoryStream

    # encrypt
    $cs = New-Object System.Security.Cryptography.CryptoStream -ArgumentList (
        $ms,
        $encryptor,
        [System.Security.Cryptography.CryptoStreamMode]::Write
    )

    $cs.Write($bytesToEncrypt, 0, $bytesToEncrypt.Length)
    $cs.Close()

    return [System.Convert]::ToBase64String($ms.ToArray())
}

$clearTextContent = "Some String"
$clearTextBytes = [System.Text.Encoding]::UTF8.GetBytes($clearTextContent)

$encryptedData = AesEncrypt $clearTextBytes
Write-Host $encryptedData

