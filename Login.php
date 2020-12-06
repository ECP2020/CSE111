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
        <a href= "PastYears.php"> Past Trending Songs </a>
        <a href ="Logout.php" > Logout </a>
</div>

<center><a class = "logo"  href = Index.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>
</body> 
</header>
</html>

<?php 

// Check connection
$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }


$_SESSION['user_email'] = $_POST['userEmail'];


//$_SESSION['password'] = $_POST['password'];



$query= "SELECT P_email, P_name FROM Person WHERE P_email = '{$_SESSION['user_email']}'";
$statement = $conn->prepare($query);
$result = $statement->execute();

while($row = $result->fetchArray(SQLITE3_ASSOC))
{
    $email = $row['P_email'];
    $name = $row['P_name'];
    echo "<center><h3> Welcome, " .$name. "</h3></center>"; 

   
}
if($_SESSION['user_email'] = $result->fetchArray(SQLITE3_ASSOC)) 
{
    echo "<center><h3> Success </h3></center> ";

    //$_SESSION['user_email']= $row['P_email'];
    //$name = $row['P_name'];


} 
else 
{
    //go back to login if username is wrong
    header("location: UserLogin.php");
}





?>
