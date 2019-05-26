<?php
require "db_config.php";

//Registration for organization

if(isset($_POST['orgSubmit'])) {
	
	require 'db_config.php';
	
	$orgEmail = mysqli_real_escape_string($connection, $_POST['orgEmail']);
	$orgPassword = mysqli_real_escape_string($connection, $_POST['orgPassword']);
	$orgName = mysqli_real_escape_string($connection, $_POST['orgName']);
	$orgID = mysqli_real_escape_string($connection, $_POST['orgID']);
	$orgTax = mysqli_real_escape_string($connection, $_POST['orgTax']);
	
	//Check for empty fields
	if(empty($orgEmail) || empty($orgPassword) || empty($orgName) || empty($orgID) || empty($orgTax)) {
		header("Location:RegisterOrg.php?signup=empty");
	    exit();
	} else {
        $sql = "SELECT * FROM login WHERE email='$orgEmail'";
		$result = mysqli_query($connection, $sql);
		$resultCheck = mysqli_num_rows($result);
		
		if ($resultCheck > 0){
		    header("Location:RegisterOrg.php?signup=usertaken");	
			exit();
		} else {
			//Hashing
			$hashedPass = password_hash($orgPassword, PASSWORD_DEFAULT);
			
			$sql = "INSERT INTO `organization` (email,password,name_organization,number_id,tax_number) VALUES('$orgEmail', '$hashedPass', '$orgName', '$orgID', '$orgTax');";
			$result = mysqli_query($connection, $sql);
			header("Location:Main.php?signup=success");	
			exit();
		}
		
		}
	}
	
 else {
	header("Location:Register.php");
	exit();
}
?>