<?php
// 2011 Jesse Bordoe & Kamil Olesiejuk 
// Recieves search session data and outputs to a file
$json = $_POST["data"];
$data = json_decode($json);
$query = "";

if($json)
{
	echo "Data successfully sent.";
	$query = $data->{'query'};
}
else
{
	echo "something went wrong";
}

$myFile = $query.".json"; //create new .json file for this query
$fh = fopen($myFile, 'w') or die("can't open file");
fwrite($fh, $json);
fclose($fh);
?>