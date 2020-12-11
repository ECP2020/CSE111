<?php 

// Check connection
$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }
?>



<html>
<head>
    <meta charset ="UTF-8">

   
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0"/>

    <link href = "css/styles.css" rel = "stylesheet" type = "text/css" > 
    <!-- TITLE --> 
    <title>2016 Trending Songs</title>

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


<center><a class = "logo"  href = 2015.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>
<div class ="years">
<a href = "2015users.php"> 2015 </a>
    <a href = "2016users.php"> 2016 </a>
    <a href = "2017users.php"> 2017 </a>
    <a href = "2018users.php"> 2018 </a>
    <a href = "2019users.php"> 2019 </a>

</div>
<center> <h3> 2016 Trending Songs </h3></center>
<?php 


    $sql = "SELECT six_ts_ISRC, six_ts_title, six_ts_artist, six_ts_album, TS_Spotify FROM Sixteen_TS";

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<form  id = 'formID' action = '2016users.php' method = 'POST'>
            
            <div class = 'songs'>
            <p><input type= 'checkbox' name = songs[] value = ".$row['six_ts_ISRC']." /> ".$row['six_ts_title']." ".$row['six_ts_artist']." ".$row['six_ts_album']." <a href= ".$row['TS_Spotify']."> Listen to Song!</a>   </p>

            </div>
            
            ";

        } 
        echo "<form id = 'formID' action = '2016susers.php' method = 'POST' >
        <input type='submit' name='submit' value='Submit'/> 
        </form>" ;

      

        if(isset($_POST['submit']))
        {
            if(!empty($_POST['songs']))
            {
                foreach($_POST['songs'] as $checked)
                {
                
                  echo "Songs Selected:";
                  echo $checked."</br>";



                  $conn->close();

                  //$connection = new mysqli("data.sqlite");
                  //if ($connection->connect_error) {
                   //   die("Connection failed: " . $connection->connect_error);
                   // }
                $user = 'root';
                $pass = '';
                $db = 'SelectedItems';

                //New database named SelectedItems

                $db = new mysqli('localhost', $user, $pass, $db) or die ("unable to connect");

        
                echo "Connected successfully";
                    
                
                    
                
                  $sql = "INSERT INTO Items (userpick) VALUES('$checked')";
                  //$stmt = $mysqli->prepare();

                  if ($db->query($sql) === TRUE) {
                    echo "New record created successfully";
                  } else {
                    echo "Error: " . $sql . "<br>" . $db->error;
                  }
                   























                }
            } 
            else 
            {
                echo '<div class="error">Checkbox is not selected!</div>';
            }   

        }

        

?>

</body>
</header>
</html>