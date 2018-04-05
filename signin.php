<?php 
    define("TITLE","Log in");
    include('header.php'); 
    if(isset($_POST["sign_submit"]))
      {
        function validateformData ($formData){
          $formData = trim( stripslashes (htmlspecialchars ( $formData )));
          return $formData;
        }
        $formEmail = validateformData( $_POST['inputEmail']);
        $formPass = validateformData( $_POST['inputPassword']);

        include('connection.php');

        $query = "SELECT username,email,passwords FROM `user` WHERE email='$formEmail'";

        $result = mysqli_query( $conn, $query);
        
        if(mysqli_num_rows ($result) > 0 )
        {
           while($row = mysqli_fetch_assoc ($result))
          {
            $user  = $row['username'];
            $email = $row['email'];
            $passwords = $row['passwords'];
          }
          if(password_verify($formPass,$passwords)){
              $_SESSION['username']=$user;
              $_SESSION['email']=$email;
              //echo '<div class="alert alert-success"><strong>Success!</strong>have successfully logged in.</div>';
              ?>
              <script> window.location.replace("index.php");</script>
              <?php
              
          }
          else
          {
            echo '<div class="alert alert-warning"><strong>Warning!</strong> Email is incorrect.</div>';
          }
        }
        else
        {
          echo '<div class="alert alert-warning"><strong>Warning!</strong> Email is incorrect.</div>';
        }
        mysqli_close($conn);
      }
?>

<?php
// session_start();
if($_SESSION['username']){
  echo '<div class="alert alert-info"><strong>Hi!</strong> You are already logged in. </div>';
}
?>
<?php if(!($_SESSION['username']){ ?>
<form class="form-signin" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                <h1 class="h3 mb-3 font-weight-normal">Login</h1>
                  <div class="form-label-group">
                    <input type="email" name="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                    <label for="inputEmail">Email address</label>
                  </div>

                  <div class="form-label-group">
                    <input type="password" name="inputPassword" class="form-control" placeholder="Password" required autofocus>
                    <label for="inputPassword">Password</label>
                  </div>

                  <button class="btn btn-lg btn-primary btn-block" type="submit" name="sign_submit">Sign in</button>
 </form>
 <?php } ?>