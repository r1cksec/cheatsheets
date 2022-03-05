foreach (glob("*.*") as $filename) 
{
    $info = pathinfo($filename);
    if ($info["extension"] == "txt") 
        echo $filename."\n";
}

