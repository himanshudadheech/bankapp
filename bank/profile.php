
<?php

include 'con.php';
if ($conn->connect_error) {
 die("Connection failed: " . $conn->connect_error);
} 
	$email = $_POST['email'];
//$email = "test@technonjr.org";

$sql = "SELECT * FROM bankuser where email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows >0) {
 while($row=mysqli_fetch_array($result))
                    {
                        
                    	$flag[]=$row;
                    }
                
                     echo json_encode(array('heros' => $flag));

 
 

 
} else {
 echo "0 results";
}
 echo $json;
$conn->close();
?>