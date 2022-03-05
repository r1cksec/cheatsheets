$replace = array( 's' => 't', 'foo' => 'bar');
$text = strtr("string bar", $replace );

$txt = str_replace("s", "t", "string");

echo $text;
echo $txt;

