$iniVec = [byte[]]@(10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160)

function AesDecrypt($encryptedBase64)
{
    $aesPassword = "SomePassword"
    $passwordBytes = [System.Text.Encoding]::UTF8.GetBytes($aesPassword)

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

    $decryptor = $aes.CreateDecryptor()

    $encryptedBytes = [System.Convert]::FromBase64String($encryptedBase64)
    $ms = New-Object System.IO.MemoryStream

    # decrypt
    $cs = New-Object System.Security.Cryptography.CryptoStream -ArgumentList (
        $ms,
        $decryptor,
        [System.Security.Cryptography.CryptoStreamMode]::Write
    )

    $cs.Write($encryptedBytes, 0, $encryptedBytes.Length)
    $cs.Close()

    $decryptedText = [System.Text.Encoding]::UTF8.GetString($ms.ToArray())

    return $decryptedText
}

$encryptedBase64 = "pd3KFvx8XXWaQZEw3AOM+w=="
$decryptedData = AesDecrypt $encryptedBase64
Write-Host $decryptedData

