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
  <a href="Albumsusers.php">Albums</a>
  <a href="RadioStationsusers.php">Radio Stations</a>
  <a href= "pastyearsuser.php"> Past Trending Songs </a>
  <a href = "logout.php" > Logout </a>
</div>
<center><a class = "logo"  href = indexuser.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

 <!-- The form -->
 <center><form class="example" action="indexuser.php" method = "POST">
        <input id = "search" type="text" placeholder="Search Songs" name="search">
        <button type="submit" name = "submit"><i class="fa fa-search"></i></button>
        </form></center>

        <!-- <center> <h1> Search Results for: //echo $_POST["search"]; </h1> <center> -->
<div class= "Tables">
<center><h3> Title Artist Album </h3><center>
<?php 

    //$sql = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS;";

    //$result = $conn->query($sql);
    //$resultCheck =  $result->fetchArray();
    //foreach($resultCheck as $value)
    //{
    //    echo $value. "<br>";
    //}

    //$search =$_POST['search'];
    //$search = htmlspecialchars($search);
    //$search = mtsql_real_escape_string($search);
    //$results = mysqli_query("SELECT * FROM USA_TS WHERE USA_TS_title LIKE '%".$search."%')") ;

    //if(mysql_num_rows($results) > 0)
    //{
    //    while($row = mysql_fetch_array($results))
    //    {
    //        echo "<h3>" . $row['USA_title']."</h3>";
    //    }
    //}
    //else 
    //{
    //    echo "NO RESULTS";
    //}
    //$Value = $conn -> real_escape_string($_POST["search"]);

    $Value = $_POST["search"];
  
    //$sql = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS WHERE USA_TS_title LIKE '%$Value%' OR USA_TS_artist LIKE '%$Value%' LIMIT 2";

    //$sql1 = "SELECT TS_title, TS_artist, TS_album FROM Global_TS, USA_TS WHERE TS_title LIKE '%$Value%' OR TS_artist LIKE '%$Value%'
    
    //OR TS_album LIKE '%$Value%' AND USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC

    //UNION

    //SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM Global_TS, USA_TS WHERE USA_TS_title LIKE '%$Value%' OR USA_TS_artist LIKE '%$Value%'
    
   // OR USA_TS_album LIKE '%$Value%' AND  USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC GROUP BY TS_title;
   /// ";

    //$sql3 = "SELECT eight_ts_title, eight_ts_artist, eight_album FROM Eightteen_TS WHERE eight_ts_title LIKE '%$Value%' OR eight_ts_artist LIKE '%$Value%' LIMIT 2";

    //$sql4 = "SELECT seven_ts_title, seven_ts_artist, seven_ts_album FROM Seventeen_TS WHERE seven_ts_title LIKE '%$Value' OR seven_ts_artist LIKE '%$Value%' LIMIT 2 ";

    //$sql5 = "SELECT six_ts_title, six_ts_artist, six_ts_album FROM Sixteen_TS WHERE six_ts_title LIKE '%$Value' OR six_ts_artist LIKE '$Value' LIMIT 2";

    //$sql6 = "SELECT five_ts_title, five_ts_artist, five_ts_album FROM Fifteen_TS WHERE five_ts_title LIKE '%$Value' OR five_ts_artist LIKE '%$Value' LIMIT 2";

    //$sql7 = "SELECT nine_ts_title, nine_ts_artist, nine_album FROM Nineteen_TS WHERE nine_ts_title LIKE '%$Value' OR nine_ts_artist LIKE '%$Value' LIMIT 2 ";
    
     $sql = "SELECT TS_title, TS_artist, TS_album FROM Global_TS, USA_TS WHERE TS_title LIKE '%$Value%' OR TS_artist LIKE '%$Value%'
    
     OR TS_album LIKE '%$Value%' AND USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC
 
     UNION
 
     SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM Global_TS, USA_TS WHERE USA_TS_title LIKE '%$Value%' OR USA_TS_artist LIKE '%$Value%'
     
     OR USA_TS_album LIKE '%$Value%' AND  USA_TS.USA_TS_ISRC = Global_TS.TS_ISRC GROUP BY TS_title;
     ";
     //$queryResult = $result->execute();

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div class = 'songs'>
                <h3>".$row['TS_title']." ".$row['TS_artist']." ".$row['TS_album']."  </h3>
            </div>";
        } 


?>
</div>

</body> 




</header>
</html>