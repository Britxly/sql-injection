<?php

if(isset($_GET['login-submit'])){

$userName = $_GET['username'];
$password = $_GET['password'];

try{
    $conn = mysqli_connect("localhost", "root", "passmein", "pharmacy");

$query = "SELECT * FROM Customer WHERE username='$userName' AND password='$password'";

$result = mysqli_query($conn, $query);
if (mysqli_num_rows($result) > 0) {
    echo "Login Successful";
}
else{
    echo "Login Failed";
}
}
catch(Exception $e){
    echo "Error: " . $e;
}
    

function validation($userName, $password){

    // $query = "SELECT userName, password FROM user";
    // $query .=" WHERE userName = '" . $userName ."' AND password = '" . $password . "'";

    if(empty($userName) && empty($password)){
        $emptyfield = "Field cannot be empty</br>";
        echo $emptyfield;
        echo "Redirecting to login screen...";
        header( "Refresh:1; url=index.php", true, 303);
    }

    //    $query = "SELECT * FROM user";
 //    $query .=" WHERE userName = '" . $userName ."'";

 //    $result = $connection ->prepare($query);
 //    $result->execute();
 //    $result = $result->fetchAll();

    // if(count($result) > 0){
    //  echo "Username already exist";
 //     //sleep(3);
 //     header( "Refresh:1; url=index.php", true, 303);
    // } else {
    //  inDatabase();
    // }
 //    die;
}
}

else if(isset($_GET['submit-button'])){
    header('location: signup.php');
}
?>