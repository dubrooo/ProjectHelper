<?php
header('Content-Type: application/json');
include "db_config.php";
$q2 = json_decode($_POST['search'],true);
$id2 = (int)mysqli_real_escape_string($connection,$q2['search']);
$sql = "SELECT name_institution,email,address FROM institution WHERE id_institution = $id2";
$query = mysqli_query($connection,$sql);
$result = mysqli_fetch_assoc($query);
echo json_encode($result);