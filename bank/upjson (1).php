
<?php

include 'con.php';	
//$conn=mysqli_connect("localhost","id17166590_root","Localhost@123","id17166590_apphost");


if ($conn->connect_error) {
 die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT * FROM bankuser ORDER BY id DESC";
$result = $conn->query($sql);

if ($result->num_rows >0) {
 while($row[] = $result->fetch_assoc()) {
 
 $tem = $row;
 
 $json = json_encode($tem);
 
 
 }
 
} else {
 echo "0 results";
}
 echo $json;
$conn->close();
?>