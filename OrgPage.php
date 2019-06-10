<!DOCTYPE html>
<html lang="en">
<head>
<title>Vaši konkursi (Easy Project)</title>
<link type="text/css" rel="stylesheet" href="OrgPage.css">
</head>
<body>

<div class="titleBar">
<h1 align="center">Ovo su Vaši konkursi</h1>
</div>

<table align="right"><tr><td>
<form method="post" action="LogoutOrgDB.php">
<input type="submit" name="logout" id="button" value="Log Out">
</form>
</td></tr></table>

<!--Table with active competitions. Organization can cancel any active competition-->
<table align="center">
<tr><td height="40px"></td></tr>
</table>

<div class="tableDiv">
<table align="center" border="1">
<tr>
<th width="300px" colspan="7"><h2>Aktivni konkursi</h2></th>
</tr>
<tr>
<th align="center">Konkurs</th>
<th align="center">Tip</th>
<th align="center">Rok</th>
<th align="center">Način slanja</th>
<th align="center">Dokumentacija</th>
<th align="center" colspan="2">Status</th>

<?php
require "db_config.php";
$id = (int)$_SESSION['org_name'];
$sql = "SELECT c.name_competition, c.type, deadline, type_of_sending, documentation, status, id_short_competition as 'id_short_competition'
FROM organization o
JOIN assignments a on o.id_organization = a.id_organization
JOIN short_competition sc on a.id_short_competition = sc.id
JOIN competition c on c.id_competition = sc.id_competition
WHERE o.id_organization = $id;";
$query = mysqli_query($connection,$sql);
while ($row1 = mysqli_fetch_array($query)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['type'] . "</td>";
	echo "<td align=\"center\">" . $row1['deadline'] . "</td>";
	echo "<td align=\"center\">" . $row1['type_of_sending'] . "</td>";
	echo "<td align=\"center\"><a href='shortComp/" . $row1['documentation'] . "'>" . $row1['documentation'] . "</a></td>";
	echo "<td align=\"center\">
	<form action=\"OrgCancelsComp.php\" method=\"POST\">
	<select name=\"statusC\" id=\"statusC\" onmouseover='mouseOver(this)' onmouseout='mouseOut(this)'>
	<option value=\"\">-Izaberi-</option>
	<option value=\"accepted\">Prihvaćam</option>
	<option value=\"rejected\">Odbijam</option>
	</select>
	<br><br><button type=\"submit\" name=\"cancelComp\" id=\"button\" value=\"{$row1['id_short_competition']}\">Pošalji</button>
	</form>
	</td>";
	echo "<td align=\"center\">" . $row1['status'] . "</td>";
	echo "</tr>";
}
?>
</div>

<script>
    function mouseOver(obj)
    {
        obj.style.backgroundColor = "#a1ecce";
    }
</script>

</table>

