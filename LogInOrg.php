<!DOCTYPE html>
<html lang="en">
<head>
<title>Log In (Easy Project)</title>
</head>
<body>
<!--Logging form-->
<h1>Logovanje:</h1>
<table border="1">
<form method="post" action="LogInOrgDB.php">
<tr>
<td align="right"><label>Email:</label></td>
<td><input type="email" name="email"></td>
</tr>
<tr>
<td align="right"><label>Lozinka:</label></td>
<td><input type="password" name="passwd"></td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" name="log" value="Log In">
<input type="reset" name="cancel" value="Poništi">
</td>
</tr>
</form>
</table>
<br>
<a href="Main.php">Nazad</a>
</body>
</html>