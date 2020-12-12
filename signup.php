<?php 

$user = 'root';
$pass = '';
$db = 'Person';

//New database named SelectedItems

$db = new mysqli('localhost', $user, $pass, $db) or die ("unable to connect");


echo "Connected successfully";
    

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset ="UTF-8">

   
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>

    <link href = "css/styles.css" rel = "stylesheet" type = "text/css" > 
    <!-- TITLE --> 
    <title>Trending Songs</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<header> <!-- adding the css styles -->
<body bgcolor = #a45db8> 

<center><a class = "logo"  href = signup.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>


<form action= 'signup.php' method="GET">
    <!--Name -->
    <center><label for="name">Name: </label><center>
    <center><input name="name" placeholder="name" id="name" required > <center>
    
    <!---email -->
    <center><label for="email">Email: </label><center>
    <center><input name = "email" type = "email" placeholder = "email"  id = "email" required ><center>

    <!--Password-->
    <center><label for="pass">Password: </label><center>
   <center> <input name = "password" type = "password" placeholder = "password" id = "pass" required ><center>

    <!--repeat Password -->
    <center><label for="passw"> Repeat Password: </label><center>
   <center> <input type = "password" placeholder = "password" id = "pass" required ><center>

	
	<button type="submit" class="btn btn-outline-warning" name="submit" value="troll">Sign-Up</button>	

</form>

<?php 

if(isset($_GET['submit']))
{
    
    $name = $_GET['name'];
    //echo $name;
    $email = $_GET['email'];

    $pass =  $_GET['password'];

$sql = "INSERT INTO Users (P_name, P_email, P_password) VALUES('$name', '$email', '$pass')";
//$stmt = $mysqli->prepare();

    if ($db->query($sql) === TRUE) 
        {
        echo "New record created successfully";
        } 
        else 
        {
        echo "Error: " . $sql . "<br>" . $db->error;
        }
}



?>


</body> 
</header>
</html>

