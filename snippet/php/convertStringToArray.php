# convert to array                                                                                  
$string = "Some string";
$arr = explode(" ", $string);
print_r($arr);

# convert back
$string2 = implode(" ", $arr);
echo $string2;

