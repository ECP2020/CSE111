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
  <a href="trendingsongsuser.php">Trending Songs</a>
  <a href="albumsuser.php">Albums</a>
  <a href="RadioStationsuser.php">Radio Stations</a>
  <a href= "pastyearsuser.php"> Past Trending Songs </a>
  <a href ="logout.php" > Logout </a>
</div>

<center><a class = "logo"  href = radiostationsuser.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

<h3> Please enter a genre for your preference </h3>
<form class="example" action="RadioStations.php" method = "POST">
        <input id = "search" type="text" placeholder="Search Songs" name="search">
        <button type="submit" name = "submit"><i class="fa fa-search"></i></button>
        </form>

 <h1> Search Results for: <?php echo $_POST["search"]; ?> </h1> 

</body> 
<?php 
$Value = $_POST["search"];

$sql = "SELECT r_format, r_freq, r_location FROM RadioStations WHERE r_format LIKE '%$Value%'";

$result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div class = 'songs'>
                <h3> ".$row['r_format']." ".$row['r_freq']." ".$row['r_location']."  </h3>
            </div>";
        } 





?>

</header>
</html>