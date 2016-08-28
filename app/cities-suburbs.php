<?php 

// Connect to database
$dbc = new mysqli('localhost', 'root', '', 'AJAX_location');

$CityID = $dbc->real_escape_string($_GET['cityID']);

$sql = "SELECT SuburbName, SuburbID FROM Suburbs WHERE CityID = $CityID";

//Run SQL
$result = $dbc->query($sql);

//If there was a result
if($result->num_rows > 0){
	//Successful results

	$suburbs = json_encode($result->fetch_all(MYSQLI_ASSOC));

	header('Content-Type: application/json');

	echo $suburbs;
} else {
	//No Results
	echo "error";
}