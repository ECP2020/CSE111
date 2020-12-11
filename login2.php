<?php 

$user = 'root';
                $pass = '';
                $db = 'SelectedItems';

                $db = new mysqli('localhost', $user, $pass, $db) or die ("unable to connect");

        
                echo "Connected successfully";
                    
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

<?php 

$select;
$sql = "SELECT * FROM  Items";
//$stmt = $mysqli->prepare();

$result = mysqli_query($db, $sql);

if (mysqli_num_rows($result) > 0) 
{
 // output data of each row
 while($row = mysqli_fetch_assoc($result)) 
 {
 //echo "User Picked: " . $row["userpick"]. "<br>";

 $select = $row['userpick'];
 //echo $select;

//echo $select;



$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }

    $sql1 = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS, Global_TS WHERE  USA_TS_ISRC = TS_ISRC AND  USA_TS_ISRC = '$select' ";



    //$sql2 = "SELECT TS_title, TS_artist, TS_album FROM Global_TS WHERE TS_ISRC = '$select' ";


    $sql3 = "SELECT five_ts_title, five_ts_artist, five_ts_album FROM Fifteen_TS WHERE five_ts_ISRC = '$select' ";

    $sql4 = "SELECT six_ts_title, six_ts_artist, six_ts_album FROM Sixteen_TS WHERE six_ts_ISRC = '$select' ";

    $sql5 = "SELECT seven_ts_title, seven_ts_artist, seven_ts_album FROM Seventeen_TS WHERE seven_ts_rank_number = '$select' ";

    $sql6 = "SELECT eight_ts_title, eight_ts_artist, eight_album FROM Eightteen_TS WHERE eight_ISRC = '$select' ";

    $sql7 = "SELECT nine_ts_title, nine_ts_artist, nine_album FROM Nineteen_TS WHERE nine_ISRC = '$select' ";




    $result1 = $conn->prepare($sql1);
    $queryResult = $result1->execute();



       while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
       {
        echo "<div class = 'songs'>
        <h3> ".$row['USA_TS_title']." ".$row['USA_TS_artist']." ".$row['USA_TS_album']."  </h3>
    </div>";
       }

       $result3 = $conn->prepare($sql3);
       $queryResult3 = $result3->execute();
   
   
   
        while($row = $queryResult3->fetchArray(SQLITE3_ASSOC))
        {
           echo "<div class = 'songs'>
           <h3> ".$row['five_ts_title']." ".$row['five_ts_artist']." ".$row['five_ts_album']."  </h3>
       </div>";
          }


          $result4 = $conn->prepare($sql4);
        $queryResult4 = $result4->execute();
   
   
   
        while($row = $queryResult4->fetchArray(SQLITE3_ASSOC))
        {
           echo "<div class = 'songs'>
           <h3> ".$row['six_ts_title']." ".$row['six_ts_artist']." ".$row['six_ts_album']."  </h3>
       </div>";
          }

          $result5 = $conn->prepare($sql5);
       $queryResult5 = $result5->execute();
   
   
   
        while($row = $queryResult5->fetchArray(SQLITE3_ASSOC))
        {
           echo "<div class = 'songs'>
           <h3> ".$row['seven_ts_title']." ".$row['seven_ts_artist']." ".$row['seven_ts_album']."  </h3>
       </div>";
          }

          $result6 = $conn->prepare($sql6);
       $queryResult6 = $result6->execute();
   
   
   
        while($row = $queryResult6->fetchArray(SQLITE3_ASSOC))
        {
           echo "<div class = 'songs'>
           <h3> ".$row['eight_ts_title']." ".$row['eight_ts_artist']." ".$row['eight_album']."  </h3>
       </div>";
          }

          $result7 = $conn->prepare($sql7);
          $queryResult7 = $result7->execute();
   
   
   
        while($row = $queryResult7->fetchArray(SQLITE3_ASSOC))
        {
           echo "<div class = 'songs'>
           <h3> ".$row['nine_ts_title']." ".$row['nine_ts_artist']." ".$row['nine_album']."  </h3>
       </div>";
          }

        }

    }  
       





