$filePointer = fopen("file.txt", "r");

if ($filePointer) 
{
    while (($line = fgets($filePointer)) !== false)
        echo $line;

    fclose($filePointer);
} 
else
    echo "Can not open file"; 

