$file = fopen("file.txt","r");

while (! feof ($file))
{
    echo fgetc($file);
}

fclose($file);

