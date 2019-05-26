<?php

$host = "localhost";
$username = "dubro";
$password = "nuspojava1789";
$db = "cluster";

$connection = mysqli_connect("$host", "$username", "$password","$db") or die(mysqli_error($connection));

if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>
