<?php 

// Check connection
$conn = new SQLite3("data.sqlite");
// Check connection
    if(!$conn) 
    {
        die( "Not connected to DB");
    }


$_SESSION['user_email'] = $_POST['userEmail'];


//$_SESSION['password'] = $_POST['password'];



$query= "SELECT P_email, P_name FROM Person WHERE P_email = '{$_SESSION['user_email']}'";
$statement = $conn->prepare($query);
$result = $statement->execute();

if($_SESSION['user_email'] = $result->fetchArray(SQLITE3_ASSOC)) 
{
    echo "<h3> Success </h3> ";

    //$name;
    //$email;
    //$_SESSION['user_email']= $row['P_email'];
    //$name = $row['P_name'];

    while($row = $result->fetchArray(SQLITE3_ASSOC))
    {
        $email = $row['P_email'];
        $name = $row['P_name'];
        echo "<h3> Welcome ," .$name. "</h3> "; 

        
    } 


} 
else 
{
    //go back to login if username is wrong
    header("location: UserLogin.php");
}



    while($row = $result->fetchArray(SQLITE3_ASSOC))
    {
        $email = $row['P_email'];
        $name = $row['P_name'];
        echo "<h3> Welcome," .$name. "</h3> "; 

        
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

</body> 
</header>
</html>
