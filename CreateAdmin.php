<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create admin</title>
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



<!--Form for creating administrator account if needed-->

<table align="center">
<form name="createLog" method="post" action="AdminSignup.php" onsubmit="return checkIt();">
<tr>
<td align="center" colspan="2"><h1>Create</h1></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="admUser"></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="admPassword"></td>
</tr><tr>
<td height="20px" colspan="2"><div id="warning"></div></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="submitAdmin" value="Create">
<input type="reset" name="reset" value="Cancel"></td>
</tr>
</form>
</table>

<script src="adminCreateAndLog.js"></script>
</body>
</html>