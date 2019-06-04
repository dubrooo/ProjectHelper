<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create admin</title>
   </head>
<body>
<!--Form for creating administrator account if needed-->

<table align="center">
<form method="post" action="AdminSignup.php">
<tr>
<td align="center" colspan="2"><h1>Create</h1></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="Uname"></input></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="Pass"></input></td>
</tr><tr>
<td height="20px" colspan="2"></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="submitAdmin" value="Create">
<input type="reset" name="reset" value="Cancel"></input></td>
</tr>
</form>
</table>


</body>
</html>