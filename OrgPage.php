<!DOCTYPE html>
<html lang="en">
<head>
<title>Vaši konkursi (Easy Project)</title>
</head>
<body>

<h1 align="center">Ovo su Vaši konkursi</h1>

<table align="right" border="1"><tr><td>
<form method="post" action="LogoutOrgDB.php">
<input type="submit" name="logout" value="Log Out">
</form>
</td></tr></table>

<!--Table with active competitions. Organization can cancel any active competition-->
<table align="center" border="1">
<tr>
<td>
<table border="1">
<tr>
<th width="300px" colspan="4"><h3>Aktivni konkursi</h3></th>
</tr>
<tr>
<?php
require "db_config.php";
$id = (int)$_SESSION['org_name'];
$sql = "SELECT name_competition, type, field_of_activity, c.id_competition as 'id_competition'
FROM organization o
JOIN assignments a on o.id_organization = a.id_organization
JOIN competition c on a.id_competition = c.id_competition
WHERE o.id_organization = $id;";
$query = mysqli_query($connection,$sql);
while ($row1 = mysqli_fetch_array($query)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['type'] . "</td>";
	echo "<td align=\"center\">" . $row1['field_of_activity'] . "</td>";
	echo "<td align=\"center\">
	<form action=\"OrgCancelsComp.php\" method=\"POST\">
	<button type=\"submit\" name=\"cancelComp\" value=\"{$row1['id_competition']}\">otkaži</button>
	</form>
	</td>";
	echo "</tr>";
}
?>
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
