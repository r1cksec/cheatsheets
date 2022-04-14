Function Create-Screenshot
{

    [CmdletBinding()]
    Param (
        [Parameter(Position = 0,Mandatory = $False)]
        $FilePath=[Environment]::GetFolderPath("Desktop"),
        [Parameter(Position = 0,Mandatory = $False)]
        $FileName=$NULL,
        [Parameter(Position = 0,Mandatory = $False)]
        [ValidateSet("4k","2k","1080p")]
        $Resolution="4k")
    
    [Reflection.Assembly]::LoadWithPartialName("System.Drawing")
    
    Switch($Resolution)
	{
        {($_ -eq "4k")}
		{
            $ScreenWidth = 3850
            $ScreenHeight = 2150
        }
        {($_ -eq "2k")}
		{
            $ScreenWidth = 2560
            $ScreenHeight = 1440
        }
        {($_ -eq "1080p")}
		{
            $ScreenWidth = 1920
            $ScreenHeight = 1080
        }
    }
    
    if ($FileName -ne $NULL)
	{
        if ($FileName -notlike "*.*" -or $FileName -notlike "*.png")
		{
            $FileName = $FileName + ".png"
        }
    }
    
    if ($FileName -eq $NULL)
	{
        $TestFile = $((Get-ChildItem $FilePath) | sort | Where {$_.Name -Match "PSScreenShot_"}).Name | measure -Maximum
        [INT]$Number = $TestFile.Maximum -replace "PSScreenShot_","" -replace ".png",""
        $Number++
        $FileName = "PSScreenShot_" + $Number + ".png"
    }
    
    $Bounds = [Drawing.Rectangle]::FromLTRB(0, 0, $ScreenWidth, $ScreenHeight)
    $Bmp = New-Object Drawing.Bitmap $Bounds.width, $Bounds.height
    $Graphics = [Drawing.Graphics]::FromImage($Bmp)
    $Graphics.CopyFromScreen($Bounds.Location, [Drawing.Point]::Empty, $Bounds.size)
    $Bmp.Save("$FilePath\$FileName")
    $Graphics.Dispose()
    $Bmp.Dispose()
}

