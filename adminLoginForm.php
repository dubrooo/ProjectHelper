<?php
session_start();
?>
<!--Page made for admin account to log in admin page-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log in admin</title>
   </head>
<body>

<!--Log in form-->
<table align="center">
<form method="post" action="adminLogin.php">
<tr>
<td align="center" colspan="2"><h1>Log in</h1></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="Uname"></input></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="Pass"></input></td>
</tr><tr>
<td height="20px" colspan="2"></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="log" value="Log in">
<input type="reset" name="reset" value="Cancel"></input></td>
</tr>
</form>
</table>


</body>
</html>