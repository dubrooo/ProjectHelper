<!DOCTYPE html>
<html lang="en">
<head>
<title>Vaši konkursi (Easy Project)</title>
</head>
<body>

<h1 align="center">Ovo su Vaši konkursi</h1>

<table align="right"><tr><td>
<form method="post" action="LogoutOrgDB.php">
<input type="submit" name="logout" value="Log Out">
</form>
</td></tr></table>

<!--Table with active competitions. Organization can cancel any active competition-->
<table align="center">
<tr>
<td>
<table>
<tr>
<th width="300px"><h3>Aktivni konkursi</h3></th>
</tr>
<tr>
<td align="center">Konkurs1
<input type="button" value="otkaži">
</td>
</tr>
</table>
</td>
<td>
<table>
<!--Table with competitions that were finished by this organization-->
<tr>
<th width="300px"><h3>Prošli konkursi</h3></th>
</tr>
<tr>
<td align="center">Stari Konkurs</td>
</tr>
<tr>
<td align="center">Stari Konkurs 2</td>
</tr>
</table>
</td>
</tr>
</table>
