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
<a href = "indexuser.php"> Home </a>
  <a href="TrendingSongsusers.php">Trending Songs</a>
  <a href="albumsuser.php">Albums</a>
  <a href="RadioStationsuser.php">Radio Stations</a>
  <a href= "pastyearsuser.php"> Past Trending Songs </a>
  <a href= "login2.php"> Playlist </a>
  <a href ="logout.php" > Logout </a>

</div>

<center><a class = "logo"  href = pastyearsuser.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

<!-- The form -->
<center><form class="example" action="Index.php" method = "POST">
        <input id = "search" type="text" placeholder="Search Songs" name="search">
        <button type="submit" name = "submit"><i class="fa fa-search"></i></button>
        </form></center>



<div class ="years">
    <a href = "2015users.php"> 2015 </a>
    <a href = "2016users.php"> 2016 </a>
    <a href = "2017users.php"> 2017 </a>
    <a href = "2018users.php"> 2018 </a>
    <a href = "2019users.php"> 2019 </a>

</div>

<?php 


$Value= isset($_POST['search']) ? $_POST['search'] : '';



$sql = "
     ";
   

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div class = 'songs'>
                <h3>".$row['TS_title']." ".$row['TS_artist']." ".$row['TS_album']."  </h3>
            </div>";
        } 


?>
</body>
</header>
</html>
