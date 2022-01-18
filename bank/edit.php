<?php


include 'con.php';// Create connection
//$conn=mysqli_connect("localhost","id17166590_root","Localhost@123","id17166590_apphost");


        $FacultyName = $_POST['faculty_name'];
       // $FacultyEmail = $_POST['faculty_email'];
        $FacultyBalance = $_POST['faculty_balance'];
        
        
        
        //Revier k balance mai add krne hai
        $Reciveradd = $_POST['reciver_add'];
         $ReciverId = $_POST['reciver_id'];
       
 
$sql = "SELECT * FROM bankuser WHERE name='$FacultyName'";
$check = mysqli_query($conn, $sql);

if (mysqli_num_rows($check) > 0){
     $result = "UPDATE bankuser SET balance='$FacultyBalance' WHERE name='$FacultyName'";

    if(mysqli_query($conn, $result)){
        
        echo"Send\n";
        //For Reciver
        
        $sql1 = "SELECT * FROM bankuser WHERE id='$ReciverId'";
        $check1 = mysqli_query($conn, $sql1);
               if (mysqli_num_rows($check1) > 0)
               {    $fetch = mysqli_fetch_assoc($check1);
                    $fetch_balance = $fetch['balance'];
                    $fb = (int)$fetch_balance;
                    $rb= (int)$Reciveradd;
                    $newbal = $fb+$rb;
                 $result1 = "UPDATE bankuser SET balance='$newbal' WHERE id='$ReciverId'";
        
                             if(mysqli_query($conn, $result1))
                             {
                              echo"SuccessFull";
                              }
                             else
                             {
                              echo " some error occured";
                             }
               }
              else
              {
                echo "Invalid Reciver Account Number";
              }

      
        //
    }
    else{
        echo "Transaction Failed";
    }
}
else{
    echo "Unautharised Data";
}


    
?>





