<?php 

$conn = mysqli_connect('data.sqlite');
$search = $mysqli_real_escape_string($_POST['search'])

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
  <a href="TrendingSongs.php">Trending Songs</a>
  <a href="Albums.php">Albums</a>
  <a href="RadioStations.php">Radio Stations</a>
  <a href="UserLogin.php">Login</a>
</div>
<center><a class = "logo"  href = Index.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

 <!-- The form -->
 <center><form class="example" action="Index.php" method = "GET">
        <input id = "search" type="text" placeholder="Search Songs" name="search">
        <button class = "btn" type="submit" name = "BTN"><i class="fa fa-search"></i></button>
        </form></center>


<div class= "Tables">
<?php 

    //$sql = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS;";

    //$result = $conn->query($sql);
    //$resultCheck =  $result->fetchArray();
    //foreach($resultCheck as $value)
    //{
    //    echo $value. "<br>";
    //}

    
    $result = mysql_query("SELECT * FROM USA_TS WHERE USA_TS_title LIKE $search%) ;
    while($row = mysql_fetch_assoc($result))
    {
        echo "<div id = 'link' onclick = 'addText(\"".$row['USA_TS_title']."\");'>" .$row['USA_TS_title']. "</div>";
    }



    //echo $resultCheck['TS_album'];
    //echo $resultCheck['TS_title'];
    //echo $resultCheck['TS_artist'];
?>
</div>

</body> 




</header>
</html>
