<?php
	session_start();
?>

<!DOCTYPE html>
<html>

<head>
  <title>Stock Predictor</title>
  <meta charset="utf-8">
   <!--link rel="stylesheet" type="text/css" href="style.css"-->
   
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>




<!-- here -->
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <div class="navbar-header">
      
      <a class="navbar-brand" href="index.php" style="color:white">PRiSM</a>
    </div>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.php" style="color:white">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php" style="color:white">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="Contact.php" style="color:white">Contact</a>
      </li>
    </ul>
	  </div>
      <ul class="nav navbar-nav navbar-right">
        <div class="nav-login" style="margin-top:0px;">
				<?php
					if (isset($_SESSION['u_id'])) {
						echo '<form action="includes/logout.inc.php" method="POST" >
							<button type="submit" name="submit">Logout</button>
						</form>';
						
					} else {
						echo '<form action="includes/login.inc.php" method="POST">
							<input type="text" name="uid" placeholder="Username/e-mail">
							<input type="password" name="pwd" placeholder="password">
							<button type="submit" name="submit" style="text-color:white">Login</button>
							<a href="signup.php" style="color:white">Signup</a>
						</form>
						';
					}
				?>
			</div>
      </ul>
    </div>

  
</nav>
