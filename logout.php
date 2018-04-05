<?php
 define("TITLE","Log Out");
 include('header.php');
 session_start();
 if(($_SESSION['username']))
 {  
    session_unset();
    session_destroy();
    //echo '<div class="alert alert-success"><strong>Thank You!</strong>You have successfully logged out !!</div>';
    //header('index.php');
 ?>
 <script> window.location.replace("index.php");</script>
 <?php
 }
  ?>
