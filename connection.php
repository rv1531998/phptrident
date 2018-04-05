<?php
 $db_server = "localhost";
 $db_user="root";
 $db_pass="";
 $db = "hotel";


 $conn = mysqli_connect( $db_server,$db_user,$db_pass ,$db);
 if(!$conn)
 {
     die("Connection Error".mysqli_connect_error());
 }
 ?>
 
