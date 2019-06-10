<?php
session_start();
require "db_config.php";

if(isset($_POST['cancelComp'])) {

    $statusC = $_POST['statusC'];
	$id = (int)$_SESSION['org_name'];
	$cancel = (int)mysqli_real_escape_string($connection,$_POST['cancelComp']);
    $sql = "UPDATE assignments SET status = '$statusC' WHERE id_organization = $id AND id_short_competition = $cancel";
    $query = mysqli_query($connection,$sql);

}
header("Location:OrgPageBlocker.php");
exit();

?>