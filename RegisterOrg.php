<!DOCTYPE html>
<html lang="en">
<head>
<title>Registracija (Easy Project)</title>
</head>
<body>
<h1>Registrujte Vašu organizaciju</h1>

<!--Register form-->
<table border="1">
<form method="post" action="AddOrgDB.php">
<tr>
<td align="right"><label>Email:</label></td>
<td><input type="email" name="orgEmail"></td>
</tr>
<tr>
<td align="right"><label>Lozinka:</label></td>
<td><input type="password" name="orgPassword"></td>
</tr>
<tr>
<td align="right"><label>Ime organizacije:</label></td>
<td><input type="text" name="orgName"></td>
</tr>
<tr>
<td align="right"><label>Matični broj:</label></td>
<td><input type="text" name="orgID"></td>
</tr>
<tr>
<td align="right"><label>Poreski broj:</label></td>
<td><input type="text" name="orgTax"></td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" name="orgSubmit" value="Registrujte se">
<input type="reset" name="orgReset" value="Poništi">
</td>
</tr>
</form>
</table>
<br>
<a href="Main.php">Nazad</a>

</body>
</html>