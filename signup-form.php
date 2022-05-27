<?php

if(isset($_GET['sign-up'])){

    $firstName = $_GET['firstName'];
    $lastName = $_GET['lastName'];
    $userName = $_GET['userName'];
    $password = $_GET['password'];
    $Credit = $_GET['creditCard'];
    $Address = $_GET['address'];


try {
    $connection = new PDO("mysql:host=localhost;dbname=security", "root", "rewind95591");
    // set the PDO error mode to exception
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
/*
    $query = "SELECT * FROM customer";
    $query .=" WHERE Username = '" . $userName ."'";

    $result = $connection ->prepare($query);
    $result->execute();
    $result = $result->fetchAll();

    if(count($result) < 0){
        echo "$userName already exist";
        header( "Refresh:1; url=Index.php", true, 303);
    }
    else{*/

    $sql = " INSERT INTO customer (First_Name,Last_Name,Username,Password,Credit_Card, Address) ";
    $sql .= " VALUES ('$firstName', '$lastName', '$userName', '$password', '$Credit', '$Address')";

    $connection->exec($sql);
    header( "Refresh:1; url=Index.php", true, 303);

    //}
}
catch(PDOException $e)
    {
    echo $e->getMessage();
    }

$connection = null;

}
else if(isset($_GET['btn-login'])){
    header('Location: Index.php');
}
?>