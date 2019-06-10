<?php
session_start();
?>
<!--Page made for admin account to log in admin page-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log in admin</title>
	<link type="text/css" rel="stylesheet" href="adminLoginForm.css">
   </head>
<style type="text/css">

</style>
<body>


<!--Log in form-->
<table align="center">
<form name="createLog" method="post" action="adminLogin.php" onsubmit="return checkIt();">
<tr>
<div class="titleBar"><h1 align="center">Log in</h1></div>
<td align="center" height="30px"></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="admUser"></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="admPassword"></td>
</tr><tr>
<td height="20px" colspan="2"><div id="warning"></div></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="log" id="button" value="Log in">
<input type="reset" name="reset" value="Cancel" id="button"></td>
</tr>
</form>

</table>

<script src="adminCreateAndLog.js"></script>

</body>
</html>