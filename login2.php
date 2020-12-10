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

 }

}
//echo $select;

$db->close();


$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }

    $sql1 = "SELECT USA_TS_title, USA_TS_artist, USA_TS_album FROM USA_TS WHERE USA_TS_ISRC = '$select' ";


    $result1 = $conn->prepare($sql1);
    $queryResult = $result1->execute();



       while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
       {
        echo "<div class = 'songs'>
        <h3> ".$row['USA_TS_title']." ".$row['USA_TS_artist']." ".$row['USA_TS_album']."  </h3>
    </div>";
       }




