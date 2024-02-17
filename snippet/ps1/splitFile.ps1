function Split-File
{
    param
    (
        [Parameter(Mandatory)]
        [String]
        $Path,

        [Int32]
        $PartSizeBytes = 1MB
    )

    try
    {
        # get the path parts to construct the individual part
        $FullBaseName = [IO.Path]::GetFileName($Path)
        $BaseName = [IO.Path]::GetFileNameWithoutExtension($Path)
        $ParentFolder = [IO.Path]::GetDirectoryName($Path)
        $Extension = [IO.Path]::GetExtension($Path)

        # get the original file size 
        $OriginalFile = New-Object System.IO.FileInfo($Path)
        $TotalChunks = [int]($OriginalFile.Length / $PartSizeBytes) + 1
        $DigitCount = [int][Math]::Log10($TotalChunks) + 1

        # split into chunks:
        $Reader = [IO.File]::OpenRead($Path)
        $Count = 0
        $Buffer = New-Object Byte[] $PartSizeBytes
        $MoreData = $true

        while ($MoreData)
        {
            # read a chunk and write it to file
            $BytesRead = $Reader.Read($Buffer, 0, $Buffer.Length)
            $ChunkFileName = "$ParentFolder\$FullBaseName.{0:D$DigitCount}.part" -f $Count
            Write-Verbose "saving to $ChunkFileName..."
            $Output = $Buffer

            if ($BytesRead -ne $Buffer.Length)
            {
                $MoreData = $false
                $Output = New-Object Byte[] $BytesRead
                [Array]::Copy($Buffer, $Output, $BytesRead)
            }

            # read chunks until there is no more data
            # save the read bytes in a new part file
            [IO.File]::WriteAllBytes($ChunkFileName, $Output)
            ++$Count
        }
        $Reader.Close()
    }
    catch
    {
        throw "Unable to split file ${Path}: $_"
    }
}

