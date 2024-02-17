$fp = fopen("file.txt", "w") or die("Unable to open file!");

$content = "Foo\n";
fwrite($fp, $content);

fclose($fp);

