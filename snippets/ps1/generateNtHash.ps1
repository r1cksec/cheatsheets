Function ConvertTo-NTLMPasswordHash
{
    param(
        [Parameter(Mandatory=$true)][string]$password
    )

    Function Get-MD4Hash
    {
        Param ([Parameter(Mandatory=$True, ValueFromPipeline=$False)]
        [Byte[]]$DataToHash)

        Set-StrictMode -Version Latest
        [Byte[]]$HashBytes   = New-Object Byte[] 16
        [IntPtr]$PHAlgorithm = [IntPtr]::Zero
        [IntPtr]$PHHash      = [IntPtr]::Zero
        $NTStatus = [BCrypt]::BCryptOpenAlgorithmProvider([Ref] $PHAlgorithm, 'MD4', $Null, 0)

        if ($NTStatus -NE 0)
        {
            Write-Error "BCryptOpenAlgorithmProvider failed with NTSTATUS $NTStatus"

            iif ($PHAlgorithm -NE [IntPtr]::Zero)
            {
              $NTStatus = [BCrypt]::BCryptCloseAlgorithmProvider($PHAlgorithm, 0)
            }
            Return
        }

        $NTStatus = [BCrypt]::BCryptCreateHash($PHAlgorithm, [Ref] $PHHash, [IntPtr]::Zero, 0, [IntPtr]::Zero, 0, 0)

        if ($NTStatus -ne 0)
        {
            Write-Error "BCryptCreateHash failed with NTSTATUS $NTStatus"
            if ($PHHash -ne [IntPtr]::Zero)
            {
                $NTStatus = [BCrypt]::BCryptDestroyHash($PHHash)
            }
            if ($PHAlgorithm -ne [IntPtr]::Zero)
            {
                $NTStatus = [BCrypt]::BCryptCloseAlgorithmProvider($PHAlgorithm, 0)
            }
            return
        }

        $NTStatus = [BCrypt]::BCryptHashData($PHHash, $DataToHash, $DataToHash.Length, 0)
        $NTStatus = [BCrypt]::BCryptFinishHash($PHHash, $HashBytes, $HashBytes.Length, 0)

        if ($PHHash -NE [IntPtr]::Zero)
        {
            $NTStatus = [BCrypt]::BCryptDestroyHash($PHHash)
        }
        if ($PHAlgorithm -NE [IntPtr]::Zero)
        {
            $NTStatus = [BCrypt]::BCryptCloseAlgorithmProvider($PHAlgorithm, 0)
        }

        $HashString = New-Object System.Text.StringBuilder
        Foreach ($Byte In $HashBytes)
        {
            $null = $HashString.Append($Byte.ToString("x2"))
        }
        $HashString.ToString()

    }
    Get-MD4Hash -DataToHash ([System.Text.Encoding]::Unicode.getBytes($password))
}

ConvertTo-NTLMPasswordHash <password>

