<?php
header('Content-Type: application/json');
include "db_config.php";
$q = json_decode($_POST['search'],true);
$id = (int)mysqli_real_escape_string($connection,$q['search']);
$sql = "SELECT deadline,documentation FROM short_competition WHERE id = $id";
$query = mysqli_query($connection,$sql);
$result = mysqli_fetch_assoc($query);
echo json_encode($result);