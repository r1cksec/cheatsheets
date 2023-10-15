$counter = 0;
$multArr = array();

while($counter < 3)
{
    $multArr[] = array("id" => $counter, "key" => "value"); 
    $counter++;
}   

print_r($multArr);

