 <?php
session_start();

if(isset($_POST['log'])) {
	
	require 'db_config.php';
	
	$email = mysqli_real_escape_string($connection, $_POST['email']);
	$password = mysqli_real_escape_string($connection, $_POST['passwd']);
	
	//Check if inputs are empty
	if (empty($email) || empty($password)) {
			header("Location:LogInOrg.php?login=empty");
	        exit();
	} else {
		$sql = "SELECT email, password,id_organization FROM organization WHERE email='$email';";
		$result = mysqli_query($connection, $sql);
		$resultCheck = mysqli_num_rows($result);
		if ($resultCheck < 1){
			header("Location:LogInOrg.php?login=error");
	        exit();
		} else {
			if($row = mysqli_fetch_assoc($result)){
				//De-hashing the password
				$hashedPwdCheck = password_verify($password, $row['password']);
				if ($hashedPwdCheck == false) {
					header("Location:LogInOrg.php?login=error");
	                exit();
				} elseif ($hashedPwdCheck == true){
					//Log in here
					$_SESSION['u_id'] = $row['email'];
					$_SESSION['org_name'] = $row['id_organization'];
					header("Location:OrgPageBlocker.php?login=success");
	                exit();
				}
			}
		}
	}
}
	
	 else {
	header("Location:LogInOrg.php?login=error");
	exit();
}
?>