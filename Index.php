<?php

session_start();
$database = new SQLITE3(songs.db);

if(!$database)
{
    echo "Not Connnected to Database";
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



</head>

<header> <!-- adding the css styles -->
<body>
<a class = "logo"  href = Index.html ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a>

</body> 




</header>
</html>