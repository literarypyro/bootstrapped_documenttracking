<?php
require("db.php");
require("functions/user functions.php");
require("functions/form functions.php");

$db=connectDb();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>Registration</title>

    <link href="css/style_adminex.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">
    <form class="form-signin" action="registration.php">
		<div class="form-signin-heading text-center">
            <h1 class="sign-title">Registration</h1>
            <img src="images/mrt-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
<?php
		if(isset($_POST['userName'])){
			if($_POST['password']==$_POST['repassword']){
				$eval=checkDepartmentAvailability($db,$_POST['department'],$_POST['phrase']);
				if($eval=="Okay to proceed"){
					$credentials[0]=$_POST['department'];
					$credentials[1]=$_POST['userName'];
					$credentials[2]=$_POST['password'];
					$credentials[3]=$_POST['firstName'];
					$credentials[4]=$_POST['lastName'];

					if($credentials[0]=="REC"){
						addRecordsOfficer($db,$credentials);
						echo "User has been added.  Redirecting...";
						echo '<meta http-equiv="refresh" content="3;url=login.php" />';
					}
					else {
						addUser($db,$credentials);
						echo "User has been added.  Redirecting...";
						echo '<meta http-equiv="refresh" content="3;url=login.php" />';
					}
				}
				else {
					echo $eval;
					echo '<meta http-equiv="refresh" content="3;url=login.php" />';
				}
			}
			else {
				echo "Error.  Please reverify your password.";
				echo '<meta http-equiv="refresh" content="3;url=login.php" />';
			}
		}
		else {
			header("Location: ".$_SESSION['page']);
		}
?>
			<p>Enter your personal details below</p>
            <input type="text" autofocus="" placeholder="First Name" name='firstName' class="form-control">
            <input type="text" autofocus="" placeholder="Last Name" name='lastName' class="form-control">
			<?php retrieveDepartmentListHTML($db,"","department"); ?>
			
			<!--
			<select name='department' class='form-control'>
			<option>Division</option>
			</select>
			-->
			<br>
            <p> Enter your account details below</p>
            <input type="text" autofocus="" placeholder="User Name" name='userName' class="form-control">
            <input type="password" placeholder="Password" name='password' class="form-control">
            <input type="password" placeholder="Re-type Password" name='repassword' class="form-control">
            <input type="text" placeholder="Security Phrase" name='phrase' class="form-control">
            <label class="checkbox">
                Please enter the security phrase that was provided to you
            </label>
			
			<!--
            <label class="checkbox">
                <input type="checkbox" value="agree this condition"> I agree to the Terms of Service and Privacy Policy
            </label>
            -->
			<button type="submit" class="btn btn-lg btn-login btn-block">
                <i class="fa fa-check"></i>
            </button>

            <div class="registration">
                Already Registered.
                <a href="login.php" class="">
                    Login
                </a>
            </div>

        </div>

    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>

</body>
</html>
