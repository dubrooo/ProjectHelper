<?php

/*This is a page that enables administrator account to add, delete and change
institutions and competitions. Loging is required.*/

require "db_config.php";

//Add a new institution
if(isset($_POST['addI'])) {
    $instName = $_POST['instName'];
	$instEmail = $_POST['instEmail'];
	$instAddress = $_POST['instAddress'];

    $sql = "INSERT INTO `institution` (name_institution,email,address) VALUES('$instName','$instEmail','$instAddress');";
    $query = mysqli_query($connection,$sql);
	
}

//Delete institution
if(isset($_POST['deleteI'])) {
    $instID = $_POST['instID'];

    $sql2 = "DELETE FROM `institution` WHERE institution.id_institution = '$instID';";
    $query2 = mysqli_query($connection,$sql2);
}

//Edit institution atributes
if(isset($_POST['changeI'])) {
    $instID2 = $_POST['instID2'];
	
    $instNameNew = $_POST['instNameNew'];
	$instEmailNew = $_POST['instEmailNew'];
	$instAddressNew = $_POST['instAddressNew'];
	
	$sqlNewName = "UPDATE institution SET name_institution = '$instNameNew' WHERE institution.id_institution = '$instID2';";
	$queryNewName = mysqli_query($connection,$sqlNewName);
	
	$sqlNewEmail = "UPDATE institution SET email = '$instEmailNew' WHERE institution.id_institution = '$instID2';";
	$queryNewEmail = mysqli_query($connection,$sqlNewEmail);
	
	$sqlNewAddress = "UPDATE institution SET address = '$instAddressNew' WHERE institution.id_institution = '$instID2';";
	$queryNewAddress = mysqli_query($connection,$sqlNewAddress);
	
}

//Add a new competition
if(isset($_POST['addC'])) {
	$instID = $_POST['instID3'];
    $compName = $_POST['compName'];
	$compType = $_POST['compType'];
	$compField = $_POST['compField'];
	$compDesc = $_POST['compDesc'];

    $sql3 = "INSERT INTO `competition` (id_institution,name_competition,type,field_of_activity,description) VALUES('$instID','$compName','$compType','$compField','$compDesc');";
    $query3 = mysqli_query($connection,$sql3);
	
}

//Delete competition
if(isset($_POST['deleteC'])) {
    $compID = $_POST['compID'];

    $sql4 = "DELETE FROM `competition` WHERE competition.id_competition = '$compID';";
    $query4 = mysqli_query($connection,$sql4);
}

//Edit competition atributes
if(isset($_POST['changeC'])) {
    $compID2 = $_POST['compID2'];
	
    $compNameNew = $_POST['compNameNew'];
	$compTypeNew = $_POST['compTypeNew'];
	$compFieldNew = $_POST['compFieldNew'];
	$compDescNew = $_POST['compDescNew'];
	
	$sqlNewName2 = "UPDATE competition SET name_competition = '$compNameNew' WHERE competition.id_competition = '$compID2';";
	$queryNewName2 = mysqli_query($connection,$sqlNewName2);
	
	$sqlNewType = "UPDATE competition SET type = '$compTypeNew' WHERE competition.id_competition = '$compID2';";
	$queryNewType = mysqli_query($connection,$sqlNewType);
	
	$sqlNewField = "UPDATE competition SET field_of_activity = '$compFieldNew' WHERE competition.id_competition = '$compID2';";
	$queryNewField = mysqli_query($connection,$sqlNewField);
	
	$sqlNewDesc = "UPDATE competition SET description = '$compDescNew' WHERE competition.id_competition = '$compID2';";
	$queryNewDesc = mysqli_query($connection,$sqlNewDesc);

}

//Assign competition to organization
if(isset($_POST['assignC'])) {
	$IDOrg = $_POST['IDOrg'];
    $IDSComp = $_POST['IDSComp'];

    $sqlA = "INSERT INTO `assignments` (id_organization,id_short_competition) VALUES('$IDOrg','$IDSComp');";
    $queryA = mysqli_query($connection,$sqlA);
}

//Delete assignment
if(isset($_POST['deleteA'])) {
    $IDAssi = $_POST['IDAssi'];

    $sqlDA = "DELETE FROM `assignments` WHERE assignments.id = '$IDAssi';";
    $queryDA = mysqli_query($connection,$sqlDA);
}
header("Location:adminPageI.php");
exit();
?>