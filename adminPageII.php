<?php
//Second part of admin page
if(!isset($_SESSION['u_id']))
        {
            header("Location:adminLogin.php");
        }		
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Administrator</title>
   </head>
</body>

<!--Header and logout button-->
<div style="
    width 100%;
	margin: 0 auto;
	background-color: gray;
    position: sticky;
	top: 0;
	color: white;
	font-weight: bold;
">
<table>
<tr>
<td colspan="2">
Easy Project - administrator page
</td>
<td rowspan="2" width="400px"></td>
<td rowspan="2">
        <form id="fastMenu">
		<select name="adding" id="adding" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPage_adminPageI(this.value)">
            <option value="" selected>-Unos-</option>
            <option value="#addI" id="opt">Nova institucija</option>
            <option value="#addComp" id="opt">Novi konkurs</option>
			<option value="#addAssi" id="opt">Dodela konkursa</option>
        </select>
</td>
<td rowspan="2">
		<select name="deleting" id="deleting" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPage_adminPageI(this.value)">
            <option value="" selected>-Brisanje-</option>
            <option value="#delI" id="opt">Institucije</option>
            <option value="#delComp" id="opt">Konkursa</option>
			<option value="#delAssi" id="opt">Dodeljenih konkursa</option>
        </select>
</td>
<td rowspan="2">
		<select name="editing" id="editing" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPage_adminPageI(this.value)">
            <option value="" selected>-Izmena atributa-</option>
            <option value="#editI" id="opt">Institucije</option>
            <option value="#editComp" id="opt">Konkursa</option>
        </select>
</td>
<td rowspan="2">
		<select name="view" id="view" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPage_adminPageI(this.value)">
            <option value="" selected>-Pregled-</option>
            <option value="#inst" id="opt">Institucije</option>
            <option value="#org" id="opt">Organizacije</option>
			<option value="#comp" id="opt">Objavljenih konkursa</option>
			<option value="#assi" id="opt">Dodeljenih konkursa</option>

        </select>
</td>

</form>
</td>
</tr>
<tr>
<td>
<form method="post" action="adminLogout.php">
<input type="submit" name="logout" value="Log Out">
</form>
</td>
<td>
<form method="post" action="InstPage.php">
<input type="submit" name="view" value="Detaljniji pregled">
</form>
</td>
</tr>
</table>
</div>

<!--Form for adding new institution-->
<div id="addI">
<br><br><br>
<h1 align="center">Unos nove institucije:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="AddInstitution" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>Ime institucije:</label></td>
  <td><input type="text" name="instName"></input></td>
</tr><tr>
  <td colspan="2" align="right"><input type="submit" name="addI" value="Dodaj novu instituciju"></input>
  <input type="reset" name="cancel" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>



<!--Form for deleting institution-->

<div id="delI">
<br><br><br>
<h1 align="center">Brisanje institucije:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="DeleteInstitution" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>ID institucije:</label></td>
  <td><input type="text" name="instID" size="3"></input></td>
</tr><tr>
  <td colspan="2" align="right"><input type="submit" name="deleteI" value="Izbriši"></input>
  <input type="reset" name="cancel2" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Form for editing institution values-->

<div id="editI">
<br><br><br>
<h1 align="center">Izmena atributa institucije:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="ChangeInstitution" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>Unesi ID institucije koju želite da izmenite:</label></td>
  <td colspan="3" align="left"><input type="text" name="instID2" size="3"></input></td>
</tr><tr>
<td colspan="3" height="20px"></td>
</tr><tr>
    <td align="right"><label>Novo ime:</label></td>
  <td><input type="text" name="instNameNew"></input></td>
  </tr><tr>
  <td colspan="3" align="right"><input type="submit" name="changeI" value="Izmeni"></input>
  <input type="reset" name="cancel3" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>

<!--Form for adding new competition-->
<div id="addComp">
<br><br><br>
<h1 align="center">Unos novog konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="AddCompetition" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>ID institucije:</label></td>
  <td><input type="text" name="instID3"></input></td>
</tr><tr>
  <td align="right"><label>Ime konkursa:</label></td>
  <td><input type="text" name="compName"></input></td>
</tr><tr>
  <td align="right"><label>Tip:</label></td>
  <td><input type="text" name="compType"></input></td>
</tr><tr>
  <td align="right"><label>Polje rada:</label></td>
  <td><input type="text" name="compField"></input></td>
</tr><tr>
  <td colspan="2" align="right"><input type="submit" name="addC" value="Dodaj novi konkurs"></input>
  <input type="reset" name="cancel" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Form for deleting competition-->

<div id="delComp">
<br><br><br>
<h1 align="center">Brisanje konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="DeleteInstitution" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>ID konkursa:</label></td>
  <td><input type="text" name="compID" size="3"></input></td>
</tr><tr>
  <td colspan="2" align="right"><input type="submit" name="deleteC" value="Izbriši"></input>
  <input type="reset" name="cancel2" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Form for editing competition values-->

<div id="editComp">
<br><br><br>
<h1 align="center">Izmena konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="ChangeInstitution" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>Unesi ID konkursa koji želite da izmenite:</label></td>
  <td colspan="3" align="left"><input type="text" name="compID2" size="3"></input></td>
</tr><tr>
<td colspan="3" height="20px"></td>
</tr><tr>
    <td align="right"><label>Novo ime:</label></td>
  <td><input type="text" name="compNameNew"></input></td>
  </tr><tr>
    <td align="right"><label>Novi tip:</label></td>
  <td><input type="text" name="compTypeNew"></input></td>
  </tr><tr>
      <td align="right"><label>Novo polje aktivnosti:</label></td>
  <td><input type="text" name="compFieldNew"></input></td>
  </tr><tr>
  <td colspan="3" align="right"><input type="submit" name="changeC" value="Izmeni"></input>
  <input type="reset" name="cancel3" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>

<!--Form for assigning competitions to organizations-->

<div id="addAssi">
<br><br><br>
<h1 align="center">Dodela konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="Assign" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>ID organizacije:</label></td>
  <td colspan="3" align="left"><input type="text" name="IDOrg" size="3"></input></td>
</tr><tr>
    <td align="right"><label>ID konkursa:</label></td>
  <td><input type="text" name="IDComp" size="3"></input></td>
  </tr><tr>
  <td colspan="3" align="right"><input type="submit" name="assignC" value="Dodeli"></input>
  <input type="reset" name="cancel3" value="Odbaci"></input></td>
  </tr>
</form>
</table>
</fieldset>
</div>

<!--Form for deleting assignments-->

<div id="delAssi">
<br><br><br>
<h1 align="center">Brisanje dodeljenih konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="DeleteAssignment" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>ID dodele:</label></td>
  <td><input type="text" name="IDAssi" size="3"></input></td>
</tr><tr>
  <td colspan="2" align="right"><input type="submit" name="deleteA" value="Izbriši"></input>
  <input type="reset" name="cancel2" value="Odbaci"></input></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Imported data from `institution` table-->

<div id="inst">
<br><br><br>
<h1 align="center">Prijavljene institucije</h1>
<table border="1" align="center" cellpadding="5px">
<tr>
<th>ID</th>
<th>Ime</th>

<?php
require "db_config.php";

$sql = "SELECT * FROM institution";
$query = mysqli_query($connection,$sql);

while ($row1 = mysqli_fetch_array($query)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "</tr>";
}
?>
</table>
</div>

<!--Imported data from `organization` table-->
<div id="org">
<br><br><br>
<h1 align="center">Prijavljene organizacije</h1>
<table border="1" align="center" cellpadding="5px">
<tr>
<th>ID organizacije</th>
<th>Naziv</th>
<th>Email</th>
<th>Matični broj</th>
<th>Poreski broj</th>
<?php
require "db_config.php";

$sql1 = "SELECT * FROM `organization`";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['email'] . "</td>";
	echo "<td align=\"center\">" . $row1['number_id'] . "</td>";
	echo "<td align=\"center\">" . $row1['tax_number'] . "</td>";
	echo "</tr>";
};
?>
</table>
</div>

<!--Imported data from `competition` table-->
<div id="comp">
<br><br><br>
<h1 align="center">Konkursi</h1>
<table border="1" align="center" cellpadding="5px">
<tr>
<th>ID konkursa</th>
<th>ID institucije</th>
<th>Naziv konkursa</th>
<th>Ime institucije</th>
<th>Tip</th>
<th>Polje</th>
<?php
require "db_config.php";

$sql1 = "SELECT id_competition, i.id_institution, name_institution, name_competition, type, field_of_activity 
FROM competition c 
JOIN institution i on i.id_institution = c.id_institution";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['type'] . "</td>";
	echo "<td align=\"center\">" . $row1['field_of_activity'] . "</td>";
	echo "</tr>";
};
?>
</table>
</div>

<!--Assignments table-->
<div id="assi">
<br><br><br>
<h1 align="center">Dodeljeni konkursi</h1>
<table border="1" align="center" cellpadding="5px">
<tr>
<th>ID dodele</th>
<th>ID organizacije</th>
<th>ID konkursa</th>
<th>ID institucije</th>
<th>Ime organizacije</th>
<th>Naziv konkursa</th>
<th>Institucija</th>
<?php
require "db_config.php";

$sql1 = "SELECT a.id, a.id_organization, a.id_competition, c.id_institution, name_institution, name_organization, name_competition 
FROM organization o
JOIN assignments a on a.id_organization = o.id_organization
JOIN competition c on c.id_competition = a.id_competition
JOIN institution i on i.id_institution = c.id_institution";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "</tr>";
};
?>
</table>
</div>

<script>

    function mouseOver(obj)
    {
        obj.style.backgroundColor = "#e98";
    }
    function mouseOut(obj2)
    {
        obj2.style.backgroundColor = "#fff";
    }

    function toPage_adminPageI(src) {
        window.location=src;
    }

</script>
</body>
</html>