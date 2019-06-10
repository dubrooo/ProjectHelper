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
<style type="text/css">
    body{
        font-family: Calibri;
        color: #57616a;
        margin: 0;
        background-color: #c8dfff;
    }
    fieldset{
        background-color: #ffffff;
    }
    #button:hover{
        background: #186cde;
        color: #ffffff;
    }
    #button{
        background: #ffffff;
    }
    .topbar{
        width 100%;
        margin: 0 auto;
        height: 70px;
        background-color: #186cde;
        position: sticky;
        top: 0;
        color: white;
        font-weight: bold;
    }
</style>
<body>

<!--Header and logout button-->
<div class="topbar">
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
			<option value="#shortComp" id="opt">Skraćenih konkursa</option>
			<option value="#assi" id="opt">Dodeljenih konkursa</option>

        </select>
</td>

</form>
</td>
</tr>
<tr>
<td>
<form method="post" action="adminLogout.php">
<input type="submit" id="button" name="logout" value="Log Out">
</form>
</td>
<td>
<form method="post" action="InstPage.php">
<input type="submit" id="button" name="view" value="Detaljniji pregled">

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
  <td><input type="text" name="instName"></td>
</tr><tr>
 <td align="right"><label>Email institucije:</label></td>
  <td><input type="email" name="instEmail"></td>
  </tr><tr>
  <td align="right"><label>Adresa institucije:</label></td>
  <td><input type="text" name="instAddress"></td>
  </tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="addI" value="Dodaj novu instituciju">
      <input type="reset" id="button" name="cancel" value="Odbaci"></td>
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
  <td><input type="text" name="instID" size="3"></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="deleteI" value="Izbriši"></input>
      <input type="reset" id="button" name="cancel2" value="Odbaci"></td>
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
  <td colspan="3" align="left"><input type="text" name="instID2" size="3"></td>
</tr><tr>
<td colspan="3" height="20px"></td>
</tr><tr>
    <td align="right"><label>Novo ime:</label></td>
  <td><input type="text" name="instNameNew"></td>
  </tr><tr>
      <td align="right"><label>Novi email:</label></td>
  <td><input type="text" name="instEmailNew"></td>
  </tr><tr>
        <td align="right"><label>Nova adresa:</label></td>
  <td><input type="text" name="instAddressNew"></td>
  </tr><tr>
  <td colspan="3" align="right">
      <input type="submit" id="button" name="changeI" value="Izmeni">
      <input type="reset" id="button" name="cancel3" value="Odbaci"></td>
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
  <td><input type="text" name="instID3"></td>
</tr><tr>
  <td align="right"><label>Ime konkursa:</label></td>
  <td><input type="text" name="compName"></td>
</tr><tr>
  <td align="right"><label>Tip:</label></td>
  <td><input type="text" name="compType"></td>
</tr><tr>
  <td align="right"><label>Polje rada:</label></td>
  <td><input type="text" name="compField"></td>
</tr><tr>
  <td align="right"><label>Opis:</label></td>
  <td><textarea name="compDesc" rows="10" cols="50" style="resize:none;"></textarea></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="addC" value="Dodaj novi konkurs">
      <input type="reset" id="button" name="cancel" value="Odbaci"></td>
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
  <td><input type="text" name="compID" size="3"></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="deleteC" value="Izbriši">
      <input type="reset" id="button" name="cancel2" value="Odbaci"></td>
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
<form name="ChangeCompetition" method="post" action="adminPageDB.php">
<tr>
  <td align="right"><label>Unesi ID konkursa koji želite da izmenite:</label></td>
  <td colspan="3" align="left"><input type="text" name="compID2" size="3"></td>
</tr><tr>
<td colspan="3" height="20px"></td>
</tr><tr>
    <td align="right"><label>Novo ime:</label></td>
  <td><input type="text" name="compNameNew"></td>
  </tr><tr>
    <td align="right"><label>Novi tip:</label></td>
  <td><input type="text" name="compTypeNew"></td>
  </tr><tr>
      <td align="right"><label>Novo polje aktivnosti:</label></td>
  <td><input type="text" name="compFieldNew"></td>
  </tr><tr>
    <td align="right"><label>Novi opis:</label></td>
  <td><textarea name="compDescNew" rows="10" cols="50" style="resize:none;"></textarea></td>
</tr><tr>
  <td colspan="3" align="right">
      <input type="submit" id="button" name="changeC" value="Izmeni">
      <input type="reset" id="button" name="cancel3" value="Odbaci"></td>
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
  <td colspan="3" align="left"><input type="text" name="IDOrg" size="3"></td>
</tr><tr>
    <td align="right"><label>ID skraćenog konkursa:</label></td>
  <td><input type="text" name="IDSComp" size="3"></td>
  </tr><tr>
  <td colspan="3" align="right">
      <input type="submit" id="button" name="assignC" value="Dodeli">
      <input type="reset" id="button" name="cancel3" value="Odbaci"></td>
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
  <td><input type="text" name="IDAssi" size="3"></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="deleteA" value="Izbriši">
      <input type="reset" id="button" name="cancel2" value="Odbaci"></td>
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
<th>Email</th>
<th>Adresa</th>

<?php
require "db_config.php";

$sql = "SELECT * FROM institution";
$query = mysqli_query($connection,$sql);

while ($row1 = mysqli_fetch_array($query)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['email'] . "</td>";
	echo "<td align=\"center\">" . $row1['address'] . "</td>";
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
<h1 align="center">Konkursi od institucija</h1>
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

<!--Imported data from `short_competition` table-->

<div id="shortComp">
<br><br><br>
<h1 align="center">Skraćeni konkursi</h1>
<table border="1" align="center" cellpadding="5px">
<tr>
<th>ID skraćenog konkursa</th>
<th>ID konkursa</th>
<th>Naziv konkursa</th>
<th>Ime institucije</th>
<th>Rok</th>
<th>Način slanja</th>
<th>Dokumentacija</th>
<?php
require "db_config.php";

$sql1 = "SELECT id, i.id_institution, sc.id_competition, name_institution, name_competition, deadline, type_of_sending, documentation 
FROM short_competition sc 
JOIN competition c on c.id_competition = sc.id_competition
JOIN institution i on i.id_institution = c.id_institution";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['deadline'] . "</td>";
	echo "<td align=\"center\">" . $row1['type_of_sending'] . "</td>";
	echo "<td align=\"center\"><a href='shortComp/" . $row1['documentation'] . "'>" . $row1['documentation'] . "</a></td>";;
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
<th>ID skraćenog konkursa</th>
<th>ID institucije</th>
<th>Ime organizacije</th>
<th>Naziv konkursa</th>
<th>Institucija</th>
<th>Status</th>
<?php
require "db_config.php";

$sql1 = "SELECT a.id, o.

id_organization, a.id_short_competition, c.id_institution, name_institution, name_organization, name_competition, status 
FROM assignments a
JOIN organization o on o.id_organization = a.id_organization
JOIN short_competition sc on sc.id = a.id_short_competition
JOIN competition c on c.id_competition = sc.id_competition
JOIN institution i on i.id_institution = c.id_institution";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	echo "<tr>";
	echo "<td align=\"center\">" . $row1['id'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_short_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['id_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_organization'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_competition'] . "</td>";
	echo "<td align=\"center\">" . $row1['name_institution'] . "</td>";
	echo "<td align=\"center\">" . $row1['status'] . "</td>";
	echo "</tr>";
};
?>
</table>
</div>

<script>
function mouseOver(obj)
{
    obj.style.backgroundColor = "#a1ecce";
}
function mouseOut(obj2)
{
    obj2.style.backgroundColor = "#fff";
}

function toPage_adminPageI(src) {
    window.location=src;
}


var btn = document.querySelector("input[type='submit']");
btn.addEventListener('onmouseover',function () {
    btn.style.backgroundColor = "#a1ecce";
});

    var input = document.querySelector('input[name="compID2"]');
    var compName = document.querySelector('input[name="compNameNew"]');
    var compType = document.querySelector('input[name="compTypeNew"]');
    var compField = document.querySelector('input[name="compFieldNew"]');
    var compDesc = document.querySelector('textarea[name="compDescNew"]');
	
	var inputInst = document.querySelector('input[name="instID2"]');
    var instName = document.querySelector('input[name="instNameNew"]');
    var instEmail = document.querySelector('input[name="instEmailNew"]');
    var instAddress = document.querySelector('input[name="instAddressNew"]');
	
    input.addEventListener('keyup',function () {

        var search = {
            "search" : input.value
        };

        if(input.value == '') {
            compName.value = '';
            compType.value = '';
            compField.value = '';
			compDesc.value = '';
            return false;
        }
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var responseJSON = JSON.parse(xhttp.responseText);
                console.log(responseJSON);

                compName.value = responseJSON.name_competition;
                compType.value = responseJSON.type;
                compField.value = responseJSON.field_of_activity;
				compDesc.value = responseJSON.description;

            }
        };
		
        xhttp.open("POST", "SearchCompDB.php", true);
        xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhttp.send('search='+JSON.stringify(search));
		
		        xhttp.open("POST", "SearchCompDB.php", true);
        xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhttp.send('search='+JSON.stringify(search));
    })
	
	inputInst.addEventListener('keyup',function () {

        var search = {
            "search" : inputInst.value
        };

        if(inputInst.value == '') {
            instName.value = '';
            instEmail.value = '';
            instAddress.value = '';
            return false;
        }
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var responseJSON = JSON.parse(xhttp.responseText);
                console.log(responseJSON);

                instName.value = responseJSON.name_institution;
                instEmail.value = responseJSON.email;
                instAddress.value = responseJSON.address;

            }
        };
		
        xhttp.open("POST", "SearchInstDB.php", true);
        xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhttp.send('search='+JSON.stringify(search));
    })

</script>
</body>
</html>