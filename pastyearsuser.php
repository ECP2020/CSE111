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



$sql = "SELECT five_ts_title, five_ts_artist, five_ts_album FROM Fifteen_TS, Sixteen_TS WHERE five_ts_title LIKE '%$Value%' OR five_ts_artist LIKE '%$Value%'
    
OR five_ts_album LIKE '%$Value%' AND Sixteen_TS.six_ts_ISRC = Fifteen_TS.five_ts_ISRC

UNION

SELECT six_ts_title, six_ts_artist, six_ts_album FROM Fifteen_TS, Sixteen_TS WHERE six_ts_title LIKE '%$Value%' OR six_ts_artist LIKE '%$Value%'

OR six_ts_album LIKE '%$Value%' AND  Sixteen_TS.six_ts_ISRC = Fifteen_TS.five_ts_ISRC GROUP BY five_ts_title

UNION
SELECT seven_ts_title, seven_ts_artist, seven_ts_album FROM Fifteen_TS, Seventeen_TS WHERE seven_ts_title LIKE '%$Value%' OR seven_ts_artist LIKE '%$Value%'
    
OR seven_ts_album LIKE '%$Value%' AND Seventeen_TS.seven_ts_rank_number = Fifteen_TS.five_ts_ISRC GROUP BY seven_ts_title

UNION

SELECT eight_ts_title, eight_ts_artist, eight_album FROM Fifteen_TS, Eightteen_TS WHERE eight_ts_title LIKE '%$Value%' OR eight_ts_artist LIKE '%$Value%'

OR eight_album LIKE '%$Value%' AND  Eightteen_TS.eight_ISRC = Fifteen_TS.five_ts_ISRC GROUP BY eight_ts_title

UNION

SELECT nine_ts_title, nine_ts_artist, nine_album FROM Fifteen_TS, Nineteen_TS WHERE nine_ts_title LIKE '%$Value%' OR nine_ts_artist LIKE '%$Value%'

OR nine_album LIKE '%$Value%' AND  Nineteen_TS.nine_ISRC = Fifteen_TS.five_ts_ISRC GROUP BY nine_ts_title
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
