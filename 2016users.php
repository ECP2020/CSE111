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
  <a href = "Index.php"> Home </a>
  <a href="TrendingSongs.php">Trending Songs</a>
  <a href="Albums.php">Albums</a>
  <a href="RadioStations.php">Radio Stations</a>
  <a href="UserLogin.php">Login</a>
  <a href= "PastYears.php"> Past Trending Songs </a>
</div>


<center><a class = "logo"  href = 2015.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>
<div class ="years">
    <a href = 2015.php> 2015 </a>
    <a href = 2016.php> 2016 </a>
    <a href = 2017.php> 2017 </a>
    <a href = 2018.php> 2018 </a>
    <a href = 2019.php> 2019 </a>

</div>
<center> <h3> 2016 Trending Songs </h3></center>
<?php 


    $sql = "SELECT six_ts_title, six_ts_artist, six_ts_album FROM Sixteen_TS";

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<form  id = 'formID' action = '2016users.php' method = 'POST'>
            
            <div class = 'songs'>
            <p><input type= 'checkbox' name = songs[] value = ".$row['six_ts_title']." ".$row['six_ts_artist']."  ".$row['six_ts_album']." /> ".$row['six_ts_title']." ".$row['six_ts_artist']." ".$row['six_ts_album']."  </p>

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