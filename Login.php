
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
$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }


$_SESSION['user_email'] = $_POST['userEmail'];
$_SESSION['search'] = $_POST['SelectedSongs'];


//$_SESSION['password'] = $_POST['password'];

$query1 = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS";

$query= "SELECT P_email, P_name FROM Person WHERE P_email = '{$_SESSION['user_email']}'";

$statement1 = $conn->prepare($query1);
$result1 = $statement1->execute();

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
if($_SESSION['seach'] = $result1->fetchArray(SQLITE3_ASSOC)) 
{
    echo "<center><h3> SL </h3></center> ";

    //$_SESSION['user_email']= $row['P_email'];
    //$name = $row['P_name'];


} 

else 
{
    //go back to login if username is wrong
    header("location: UserLogin.php");
}





?>
