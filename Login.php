
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
        <a href ="Indexuser.php"> Home </a>
        <a href="TrendingSongsusers.php">Trending Songs</a>
        <a href="albumsuser.php">Albums</a>
        <a href="RadioStationsuser.php">Radio Stations</a>
        <a href= "PastYearsuser.php"> Past Trending Songs </a>
        <a href ="logout.php" > Logout </a>
</div>

<center><a class = "logo"  href = Login.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>
</body> 
</header>
</html>

<?php 
//include('TrendingSongsUsers.php');
// Check connection


$user = 'root';
$pass = '';
$db = 'Person';

//New database named SelectedItems

$db = new mysqli('localhost', $user, $pass, $db) or die ("unable to connect");


//echo "Connected successfully";
    


$_SESSION['user_email'] = $_POST['userEmail'];

//echo $_SESSION['user_email'];

//$_SESSION['password'] = $_POST['password'];

$name;

$query= "SELECT P_email, P_name FROM Users WHERE P_email = '{$_SESSION['user_email']}'";
$result = mysqli_query($db, $query);

if (mysqli_num_rows($result) > 0) 
{
 // output data of each row
 while($row = mysqli_fetch_assoc($result)) 
 {
     $name = $row['P_name'];
 }
 echo "<center><h3> Welcome, " .$name. "</h3></center>"; 

 
}


else 
{
    header("location: error.php");
}






?>
