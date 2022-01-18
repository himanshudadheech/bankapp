

<?php

include 'con.php';
//$con=mysqli_connect("localhost","id17166590_root","Localhost@123","id17166590_apphost");

	
		$email = $_POST["email"];
		$password = $_POST["password"];
		
		
			$sql = "SELECT * FROM bankuser WHERE  email = '$email'";
		$result = mysqli_query($con,$sql);

		if(mysqli_num_rows($result) > 0){
		     $fetch = mysqli_fetch_assoc($result);
            $fetch_pass = $fetch['password'];
		     if($password == $fetch_pass)
		     {
                $_SESSION['email'] = $email;
                $status = $fetch['status'];
                if($status == 'verified')
                   {
                  $_SESSION['email'] = $email;
                  $_SESSION['password'] = $password;
                
                    echo "logged in successfully" ;
                   }
                else
                   {
                    $info = "It's look like you haven't still verify your email - $email";
                    $_SESSION['info'] = $info;
                    
                    }
		       }
		       else {
		           echo"incorrect";
		       }
		    
		}
		else{
  			 echo "user not found";
          }
?>