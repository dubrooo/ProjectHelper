<?php
header('Content-Type: application/json');
include "db_config.php";
$q = json_decode($_POST['search'],true);
$id = (int)mysqli_real_escape_string($connection,$q['search']);
$sql = "SELECT name_competition,field_of_activity,type,description FROM competition WHERE id_competition = $id";
$query = mysqli_query($connection,$sql);
$result = mysqli_fetch_assoc($query);
echo json_encode($result);
