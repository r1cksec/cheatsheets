$positions = array();
$pos = -1;

while (($pos = strpos("string", 'n', $pos + 1)) !== false)                                          
    $positions[] = $pos;

$result = implode(', ', $positions);

print_r($result);

