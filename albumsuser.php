<?php 

session_start();
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
    <title>Albums</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<header> <!-- adding the css styles -->
<body bgcolor = #a45db8>

<div class="sidebar">
  <a href = "Indexuser.php"> Home </a>
  <a href="TrendingSongsusers.php">Trending Songs</a>
  <a href="albumsusers.php">Albums</a>
  <a href="RadioStationsuser.php">Radio Stations</a>
  <a href="login2.php"> Playlist</a>
  <a href= "pastyearsusers.php"> Past Trending Songs </a>
</div>

<center><a class = "logo"  href = Index.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>
<center> <h3> Albums </h3></center>
<?php 


    $sql = "SELECT album_name, artist, group_concat(TS_title, ' ' ) as TS_title
    FROM Albums al
    GROUP BY album_name";

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div class = 'al' >
            <p> Album Name: ".$row['album_name']." Artist: ".$row['artist']."</p>

            </div>";

            echo 
            "<div class = 'names' >
                 <p> Songs:  ".$row['TS_title']."</p>
            </div>";

        } 

?>
</div>

</body> 

</header>
</html>