# string comparision case insensitive
$a.CompareTo($b)

# string comparision case sensitive
[string]::Compare($a, $b, $True)

# alternatively (no regex support)
if ($str1 -match $str2)
{
    echo "Match"
}
else
{
    echo "No Match"
}

# alternatively (with regex support - example comparing chars like \ in paths C:\temp)
if ($str1 -like $str2)
{
    echo "Match"
}
else
{
    echo "No Match"
}

