<?php
session_start();
if(!isset($_SESSION['u_id']))
        {
            header("Location:adminLogin.php");
        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="Competition.css">
    <title>CompPage</title>

</head>
<body>
<div class="topbar">
    <form method="post" action="InstPage.php">
        <input type="submit" id="button" name="back" value="Nazad">
    </form>
</div>


<!--Imported data from `competition` table-->
<div id="instComp">

<table align="center" cellpadding="5px" width="1000px">

<?php
require "db_config.php";
if(isset($_GET['id'])){
	$id = (int)$_GET['id'];

$sql1 = "SELECT * FROM competition WHERE id_competition = $id";
$query1 = mysqli_query($connection,$sql1);

$row1 = mysqli_fetch_array($query1);
	echo "<tr>";
	echo "<th><h1 align=\"center\">" . $row1['id_competition'] .". ". $row1['name_competition'] . "</h1></th></tr><tr>";
	echo "<td><pre>" . $row1['description'] . "</pre></td>";
	echo "</tr>";
}
?>
</table>
</div>

<!--Form for adding new competition-->
<div id="addComp">
<br><br><br>
<h1 align="center">Skraćivanje konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="AddSCompetition" method="post" action="CompetitionDB.php">
<tr>
  <td align="right"><label>ID konkursa:</label></td>
  <td><input type="text" name="IDComp"></td>
</tr><tr>
  <td align="right"><label>Rok:</label></td>
  <td><input type="text" name="deadline"></td>
</tr><tr>
  <td align="right"><label>Način slanja:</label></td>
  <td><select name="sendType" id="sendType">
            <option value="" selected>-Izaberi tip-</option>
            <option value="email" id="opt">Email</option>
            <option value="posta" id="opt">Pošta</option>
			<option value="emailIPosta" id="opt">Email i pošta</option>
			<option value="direktno" id="opt">Direktno</option>
        </select></td>
</tr><tr>
  <td align="right"><label>Dokumentacija (tačan naziv fajla i ekstenzija):</label></td>
  <td><input type="text" name="docum"></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="addSC" value="Skrati konkurs">
      <input type="reset" id="button" name="cancel" value="Odbaci"></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Form for deleting competition-->

<div id="delComp">
<br><br><br>
<h1 align="center">Brisanje skraćenog konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="DeleteSCompetition" method="post" action="CompetitionDB.php">
<tr>
  <td align="right"><label>ID konkursa:</label></td>
  <td><input type="text" name="SCID" size="3"></td>
</tr><tr>
  <td colspan="2" align="right">
      <input type="submit" id="button" name="deleteSC" value="Izbriši">
      <input type="reset" id="button" name="cancel2" value="Odbaci"></td>
</form>
</table>
</fieldset>
</div>
<br><br>

<!--Form for editing competition values-->

<div id="editComp">
<br><br><br>
<h1 align="center">Izmena skraćenog konkursa:</h1>
<fieldset>
<table align="center" cellpadding="10px">
<form name="ChangeSCompetition" method="post" action="CompetitionDB.php">
<tr>
  <td align="right"><label>Unesite ID skraćenog konkursa koji želite da izmenite:</label></td>
  <td colspan="3" align="left">
      <input type="text" name="SCID2" size="3"></td>
</tr><tr>
<td colspan="3" height="20px"></td>
</tr><tr>
    <td align="right"><label>Novi rok:</label></td>
  <td><input type="text" name="ScompDeadlineNew"></td>
  </tr><tr>
    <td align="right"><label>Način slanja:</label></td>
  <td><select name="ScompSendTypeNew">
            <option value="" selected>-Izaberi tip-</option>
            <option value="email">Email</option>
            <option value="pošta" >Pošta</option>
			<option value="email i pošta">Email i pošta</option>
			<option value="direktno">Direktno</option>
        </select></td>
		</tr><tr>
      <td align="right"><label>Izmena dokumentacije:</label></td>
  <td><input type="text" name="ScompDocumNew"></td>
  </tr><tr>
  <td colspan="3" align="right">
      <input type="submit" id="button" name="changeSC" value="Izmeni">
      <input type="reset" id="button" name="cancel3" value="Odbaci"></td>
</form>
</table>
</fieldset>
</div>

<script>
    
    var input = document.querySelector('input[name="SCID2"]');
    var ScompDeadline = document.querySelector('input[name="ScompDeadlineNew"]');
    var ScompDocumNew = document.querySelector('input[name="ScompDocumNew"]');
	
    input.addEventListener('keyup',function () {

        var search = {
            "search" : input.value
        };

        if(input.value == '') {
            ScompDeadline.value = '';
            ScompDocumNew.value = '';
            return false;
        }
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var responseJSON = JSON.parse(xhttp.responseText);
                console.log(responseJSON);

                ScompDeadline.value = responseJSON.deadline;
                ScompDocumNew.value = responseJSON.documentation;

            }
        };
		
        xhttp.open("POST", "SearchCompDB.php", true);
        xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhttp.send('search='+JSON.stringify(search));
		
		        xhttp.open("POST", "SearchShortCompDB.php", true);
        xhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhttp.send('search='+JSON.stringify(search));
    })
	
</script>

</body>
</html>

