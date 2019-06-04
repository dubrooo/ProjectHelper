<?php
session_start();
require "db_config.php";

if(isset($_POST['cancelComp'])) {

	$id = (int)$_SESSION['org_name'];
	$cancel = (int)mysqli_real_escape_string($connection,$_POST['cancelComp']);
    $sql = "DELETE FROM assignments WHERE id_organization = $id AND id_competition = $cancel";
    $query = mysqli_query($connection,$sql);

}
header("Location:OrgPageBlocker.php");
exit();

?>