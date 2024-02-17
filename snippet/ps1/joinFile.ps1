function Join-File
{
    param
    (
        [Parameter(Mandatory)]
        [String]
        $PathToOriginalFile,

        [Switch]
        $DeletePartFiles
    )

    $Files = Get-ChildItem -Path "$PathToOriginalFile.*.part" | Sort-Object -Property {
        # get the part number which is the extension of the file
        $BaseName = [IO.Path]::GetFileNameWithoutExtension($_.Name)
        $Part = [IO.Path]::GetExtension($BaseName)
		$Part

        if ($Part -ne $null -and $Part -ne '')
        {
            $Part = $Part.Substring(1)
        }
        [int]$Part
    }

    # append Part content to file
    $Writer = [IO.File]::OpenWrite($PathToOriginalFile)
    $Files | ForEach-Object {
        Write-Verbose "processing $_..."
        $Bytes = [IO.File]::ReadAllBytes($_)
        $Writer.Write($Bytes, 0, $Bytes.Length)
    }
    $Writer.Close()

    if ($DeletePartFiles)
    {
        Write-Verbose "Deleting Part Files..."
        $Files | Remove-Item
    }
}

