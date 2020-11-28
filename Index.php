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
<center><a class = "logo"  href = Index.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

 <!-- The form -->
 <center><form class="example" action="Index.php" method = "POST">
        <input id = "search" type="text" placeholder="Search Songs" name="search">
        <button type="submit" name = "submit"><i class="fa fa-search"></i></button>
        </form></center>

        <center> <h1> Search Results for: <?php echo $_POST["search"]; ?> </h1> <center>
<div class= "Tables">
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
    $Value = $_POST["search"];
  
    $sql = "SELECT * FROM USA_TS WHERE USA_TS_title LIKE '%$Value%' OR USA_TS_artist LIKE '%$Value%'";

    $sql2 = "SELECT * FROM Global_TS WHERE TS_title LIKE '%$Value%' OR TS_artist LIKE '%$Value%'";

    
     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div>
                <h3>".$row['USA_TS_title']." ".$row['USA_TS_artist']." ".$row['USA_TS_album']."  </h3>
            </div>";
        } 


    $result2 = $conn->prepare($sql2);
    $queryResult2 = $result2->execute();

        while($row = $queryResult2->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div>
                <h3>".$row['TS_title']." ".$row['TS_artist']." ".$row['TS_album']."  </h3>
            </div>";
        } 
?>
</div>

</body> 




</header>
</html>