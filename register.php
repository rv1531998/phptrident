<?php
define("TITLE","Registration");
// session_start();
if($_SESSION['username']){
  echo '<div class="alert alert-info"><strong>Hi!</strong> Please log out to Register !!</div>';
}
?>
<?php if(!$_SESSION['username']){ ?>
<form class="form-signin" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
              <h1 class="h3 mb-3 font-weight-normal">Register</h1>
                <div class="form-label-group">
                  <input type="text" name="reg_user" class="form-control" placeholder="User Name" required autofocus>
                  <label for="inputEmail">User Names</label>
                </div>

                <div class="form-label-group">
                  <input type="email" name="reg_email" class="form-control" placeholder="Email address" required autofocus>
                  <label for="inputEmail">Email address</label>
                </div>

                <div class="form-label-group">
                  <input type="password" name="reg_pass" class="form-control" placeholder="Password" required>
                  <label for="inputPassword">Password</label>
                </div>

                <button class="btn btn-lg btn-success btn-block" type="submit" name ="reg_submit">Register</button>
</form>
 <?php } ?>
 
<?php 
    
    include('header.php'); 
    if(isset($_POST["reg_submit"]))
      {
        $reg_user = $_POST["reg_user"];
        $reg_email = $_POST["reg_email"];
        $reg_pass = password_hash($_POST["reg_pass"],PASSWORD_DEFAULT);

        include('connection.php');
        $query = "SELECT * FROM user WHERE username='$reg_user' or `email`='$reg_email'";
        $result = mysqli_query( $conn, $query);

        if(mysqli_num_rows($result) == 0 )
        {
            $query = "INSERT INTO `user` (`username`, `email`, `passwords`) VALUES ('$reg_user', '$reg_email', '$reg_pass')";
            if(!mysqli_query( $conn, $query))
            {
                echo "Error !!".mysqli_error;
            }
            //echo '<div class="alert alert-success"><strong>Success!</strong> You have successfully registered.</div>';
            ?>
              <script> window.location.replace("index.php");</script>
              <?php
        }
        else
        {
            echo '<div class="alert alert-warning"><strong>Warning!</strong> Email or username is already used. !!.</div>';
        }
        mysqli_close($conn);
      }
?>
<!-- Register Window-->
