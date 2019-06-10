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
<style type="text/css">
    body {
        font-family: Calibri;
    }

    div#warning {
        display: inline;
        color: #FF5A36;
        font-weight: bolder;
    }
</style>
<body>


<!--Log in form-->
<table align="center">
<form name="createLog" method="post" action="adminLogin.php" onsubmit="return checkIt();">
<tr>
<td align="center" colspan="2"><h1>Log in</h1></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="admUser"></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="admPassword"></td>
</tr><tr>
<td height="20px" colspan="2"><div id="warning"></div></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="log" value="Log in">
<input type="reset" name="reset" value="Cancel"></td>
</tr>
</form>

</table>

<script src="adminCreateAndLog.js"></script>

</body>
</html>