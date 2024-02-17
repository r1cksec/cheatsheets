$fileContent = file_get_contents("file.txt");
$words = preg_split('/[\s]+/', $fileContent, -1, PREG_SPLIT_NO_EMPTY);

foreach ($words as $w)
{
    echo "$w";
}

