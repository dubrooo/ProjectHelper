<?php

/*This is a page that enables administrator account to
make shorter documentation for competitions.*/
require "db_config.php";

//Make new short documentation for competition
if(isset($_POST['addSC'])) {
    $IDComp = $_POST['IDComp'];
	$deadline = $_POST['deadline'];
	$sendType = $_POST['sendType'];
	$docum = $_POST['docum'];

    $sql = "INSERT INTO `short_competition` (id_competition,deadline,type_of_sending,documentation) VALUES('$IDComp','$deadline','$sendType','$docum');";
    $query = mysqli_query($connection,$sql);
	
}

//Delete short documentation for competition
if(isset($_POST['deleteSC'])) {
    $SCID = $_POST['SCID'];

    $sql2 = "DELETE FROM `short_competition` WHERE short_competition.id = '$SCID';";
    $query2 = mysqli_query($connection,$sql2);
}

//Edit short documentation for competition atributes
if(isset($_POST['changeSC'])) {
    $SCID2 = $_POST['SCID2'];
	
    $ScompDeadlineNew = $_POST['ScompDeadlineNew'];
	$ScompSendTypeNew = $_POST['ScompSendTypeNew'];
	$ScompDocumNew = $_POST['ScompDocumNew'];
	
	$sql = "UPDATE short_competition SET deadline = '$ScompDeadlineNew' WHERE short_competition.id = '$SCID2';";
	$query = mysqli_query($connection,$sql);
	
	$sql2 = "UPDATE short_competition SET type_of_sending = '$ScompSendTypeNew' WHERE short_competition.id = '$SCID2';";
	$query2 = mysqli_query($connection,$sql2);
	
	$sql3 = "UPDATE short_competition SET documentation = '$ScompDocumNew' WHERE short_competition.id = '$SCID2';";
	$query3 = mysqli_query($connection,$sql3);

}
header("Location:Competition.php");
exit();
?>