<?php
require "db_config.php";

//Creating administrator account

if(isset($_POST['submitAdmin'])) {
	
	require 'db_config.php';
	
	$adminUsername = mysqli_real_escape_string($connection, $_POST['admUser']);
	$adminPassword = mysqli_real_escape_string($connection, $_POST['admPassword']);

	//Check for empty fields
	if(empty($adminUsername) || empty($adminPassword)) {
		header("Location:CreateAdmin.php?signup=empty");
	    exit();
	} else {
        $sql = "SELECT * FROM administrator WHERE username='$adminUsername'";
		$result = mysqli_query($connection, $sql);
		$resultCheck = mysqli_num_rows($result);
		
		if ($resultCheck > 0){
		    header("Location:CreateAdmin.php?signup=usertaken");	
			exit();
		} else {
			//Hashing
			$hashedPass = password_hash($adminPassword, PASSWORD_DEFAULT);
			
			$sql = "INSERT INTO `administrator` (username,password) VALUES('$adminUsername', '$hashedPass');";
			$result = mysqli_query($connection, $sql);
			header("Location:adminLoginForm.php?signup=success");	
			exit();
		}
		
		}
	}
	
 else {
	header("Location:CreateAdmin.php");
	exit();
}
?>