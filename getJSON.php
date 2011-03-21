<?php
// 2011 Jesse Bordoe & Kamil Olesiejuk 
// Recieves search session data and outputs to a file
$json = $_POST["data"];
$data = json_decode($json);

if($json)
{
	echo "Data successfully sent.";
}
else
{
	echo "something went wrong";
}

$myFile = "testFile.txt";
$fh = fopen($myFile, 'w') or die("can't open file");
fwrite($fh, $json);
fclose($fh);
?>