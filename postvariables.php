<?php 
//include('TrendingSongsUsers.php');
// Check connection


$user = 'root';
$pass = '';
$db = 'Person';

include 'IDgenerator.php';

//New database named SelectedItems

$db = new mysqli('localhost', $user, $pass, $db) or die ("unable to connect");


//echo "Connected successfully";


$_SESSION['user_email'] = $_POST['userEmail'];

//echo $_SESSION['user_email'];

//$_SESSION['password'] = $_POST['password'];

$email = $_SESSION['user_email'];

$name;

$query= "SELECT P_email, P_name FROM Users WHERE P_email = '{$_SESSION['user_email']}'";
$result = mysqli_query($db, $query);

if (mysqli_num_rows($result) > 0) 
{
 // output data of each row
 while($row = mysqli_fetch_assoc($result)) 
 {
     $name = $row['P_name'];


     $query1= "UPDATE Users SET SignedIn = 'YES' WHERE P_name = '$name' ";
     if ($db->query($query1) === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $query1 . "<br>" . $db->error;
      }


      $query2= "UPDATE Users SET P_songs = $num WHERE P_name = '$name' ";
      if ($db->query($query2) === TRUE) {
         echo "New record created successfully";
       } else {
         echo "Error: " . $query2 . "<br>" . $db->error;
       }




 }

 
 include 'login.php';


 
}




else 
{
    header("location: error.php");
}






?>