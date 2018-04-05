<?php
define("TITLE","Feedback");
 include "connection.php";
 include "header.php";
 session_start();
 //feedback insert
 if(isset($_POST["f_submit"]) && $_SESSION['username'])
      {
        function validateformData ($formData){
          $formData = trim( stripslashes (htmlspecialchars ( $formData )));
          return $formData;
        }
        //Checking if already feedback given
        $query = "SELECT * FROM `feedback` WHERE `f_email` = '".$_SESSION['email']."'";
        $result = mysqli_query( $conn, $query);

        $formInput = validateformData( $_POST['comment']);

        if(mysqli_num_rows($result)>0)
        {
          $query = "UPDATE `feedback` SET `feedback` = '$formInput' WHERE `feedback`.`f_email` = '".$_SESSION['email']."' ";

          echo '<div class="alert alert-success"><strong>Success !!</strong> Your reviews are updated. </div>';
        }
        else{       
          $query = "INSERT INTO `feedback` (`f_email`, `feedback`, `f_time`) VALUES ('".$_SESSION['email']."', '".$formInput."',".CURRENT_TIMESTAMP.")";
        }
        $result = mysqli_query( $conn, $query);
        if(!$result)
            {
                echo "Error !! ".mysqli_error($conn);
                //print_r();
            }
        else{
            echo '<div class="alert alert-info"><strong>Thanks!</strong> Your reviews are important for us. </div>';
        }
	}
?>
<form class="form-signin" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                <h1 class="h3 mb-3 font-weight-normal">Feedback</h1>
                  <div class="form-label-group">
                    <label for="comment">I want to say:</label>
                    <textarea class="form-control" rows="5" name="comment"></textarea>
                  </div> 
                <button class="btn btn-lg btn-secondary btn-block" type="submit" name="f_submit">Go</button>
</form>
