
// make sure directory exists and belongs to www-data
$uploaddir = "/var/www/uploads/";
$uploadfile = $uploaddir . $_FILES["file"]["name"];
move_uploaded_file($_FILES["file"]["tmp_name"], $uploadfile)

