
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
  <a href= "login2.php"> Login </a>
  <a href ="logout.php" > Logout </a>
</div>

<center><a class = "logo"  href = trendingsongsuser.php ><img id="logo" src ="css/img/2.png"  width="200px" height="200px" /></a></center>

<center> <h3> Trending Songs in the United States </h3></center>


<?php 



    $sql = "SELECT * FROM USA_TS";


     $result = $conn->prepare($sql);
     $queryResult = $result->execute();



        while($row = $queryResult->fetchArray(SQLITE3_ASSOC))
        {

            //checked= 'checked'

           // echo $row['USA_TS_title'];

            echo "<form  id = 'formID' action = 'TrendingSongsusers.php' method = 'POST'>
            
                <div class = 'songs'>
                <p><input type= 'checkbox' name = songs[] value = ".$row['USA_TS_ISRC']."  /> ".$row['USA_TS_title']." ".$row['USA_TS_artist']." ".$row['USA_TS_album']." <a href= ".$row['USA_TS_Spotify']."> Listen to Song!</a> </p>
            


                </div>";



         
                
            //If(!empty($_POST["selected"]) && is_array($_POST["selected"]))
           // {
             //   If(in_array($songs, $row))
              //  {
                    //Add the selected options to our $vegetables array.
               //     $songs[]=$row;

               //     echo $songs['USA_TS_title'];
               // }
                  
            //}

   
        }
        
        
        echo "<form id = 'formID' action = 'TrendingSongsusers.php' method = 'POST' >
        <input type='submit' name='submit' value='Submit'/> 
        </form>" ;

        //echo "<center><h3> Welcome, " .$songs. "</h3></center>"; 
      
  
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
                   
                   //$conn->exec('ALTER DATABASE data SET READ_WRITE WITH NO_WAIT'); 

                   //$conn->exec('INSERT INTO SelectedItems (checked) VALUES(?)');
                    
            
                
                 
             

                  //if ($connection->query($sql2) === TRUE) {
                   // echo "New record created successfully";
                  //} else {
                  //  echo "Error: " . $sql2 . "<br>" . $connection->error;
                  //}
                  

                }


            
              



            } 
            else 
            {
                echo '<div class="error">Checkbox is not selected!</div>';
            }   
        }


            
        
        
?>
</div>

</body> 

</header>
</html>