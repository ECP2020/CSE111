<?php 

// Check connection
$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }
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

<div class="sidebar">
  <a href = "Index.php"> Home </a>
  <a href="TrendingSongs.php">Trending Songs</a>
  <a href="Albums.php">Albums</a>
  <a href="RadioStations.php">Radio Stations</a>
  <a href="UserLogin.php">Login</a>
  <a href= "PastYears.php"> Past Trending Songs </a>
</div>
<center><a class = "logo"  href = UserLogin.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

<center> 

<form action= Login.php method="POST">
		<label for="emailField">Email Address: </label>
		<input name="userEmail" placeholder="123@gmail.com" id="emailField">
        <input type = "password" placeholder = "Password" required >
		<button type="submit" class="btn btn-outline-warning" name="submit" value="troll">Log-In</button>	
</form>
<!--sign up button -->
<form action = "signup.php" method = "POST" >
<button type =  "submit "  class="btn btn-outline-warning" name="submit" value="troll">Signup </button>
</form>
</center>

</body> 
</header>
</html>