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
    <title>Trending Songs</title>
    <center> <h3> TRENDING SONGS </h3></center>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<header> <!-- adding the css styles -->
<body bgcolor = #a45db8>
<?php 


    $sql = "SELECT * FROM USA_TS";

     $result = $conn->prepare($sql);
     $queryResult = $result->execute();

        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {
            echo "<div>
                <h3>".$row['USA_TS_title']." ".$row['USA_TS_artist']." ".$row['USA_TS_album']."  </h3>
            </div>";
        } 

?>
</div>

</body> 

</header>
</html>