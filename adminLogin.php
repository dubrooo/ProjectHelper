<?php

session_start();

if(isset($_POST['log'])) {
	
	require 'db_config.php';
	
	$username = mysqli_real_escape_string($connection, $_POST['Uname']);
	$password = mysqli_real_escape_string($connection, $_POST['Pass']);
	
	//Check if inputs are empty
	if (empty($username) || empty($password)) {
			header("Location:adminLoginForm.php?login=empty");
	        exit();
	} else {
		$sql = "SELECT * FROM administrator WHERE username='$username';";
		$result = mysqli_query($connection, $sql);
		$resultCheck = mysqli_num_rows($result);
		if ($resultCheck < 1){
			header("Location:adminLoginForm.php?login=error");
	        exit();
		} else {
			if($row = mysqli_fetch_assoc($result)){
				//De-hashing the password
				$hashedPwdCheck = password_verify($password, $row['password']);
				if ($hashedPwdCheck == false) {
					header("Location:adminLoginForm.php?login=error");
	                exit();
				} elseif ($hashedPwdCheck == true){
					//Log in here
					$_SESSION['u_id'] = $row['username'];
					header("Location:adminPageI.php?login=success");
	                exit();
				}
			}
		}
	}
}
	
	 else {
	header("Location:adminLoginForm.php?login=error");
	exit();
}
?>