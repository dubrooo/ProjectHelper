<!DOCTYPE html>
<html lang="en">
<head>
<title>Registracija (Easy Project)</title>
<link type="text/css" rel="stylesheet" href="RegisterOrg.css">
</head>
<style type="text/css">
    div#warning {
        display: inline;
        color: #FF5A36;
        font-weight: bolder;
    }

</style>
<body>
<script>
    function checkIt() {
        if (document.regOrg.orgEmail.value.length == 0) {
            document.getElementById("warning").innerHTML = "Sva polja za unos moraju biti popunjena";
            document.regOrg.orgEmail.style.background = "#FF5A36";
            return false;
        }
        else if (document.regOrg.orgPassword.value.length < 8) {
            document.getElementById("warning").innerHTML = "Lozinka mora sadržati minimum 8 karaktera";
            document.regOrg.orgPassword.style.background = "#FF5A36";
            return false;
        }
        else if (document.regOrg.orgName.value.length == 0) {
            document.getElementById("warning").innerHTML = "Sva polja za unos moraju biti popunjena";
            document.regOrg.orgName.style.background = "#FF5A36";
            return false;
        }
        else if (document.regOrg.orgID.value.length == 0) {
            document.getElementById("warning").innerHTML = "Sva polja za unos moraju biti popunjena";
            document.regOrg.orgID.style.background = "#FF5A36";
            return false;
        }
        else if (document.regOrg.orgTax.value.length == 0) {
            document.getElementById("warning").innerHTML = "Sva polja za unos moraju biti popunjena";
            document.regOrg.orgTax.style.background = "#FF5A36";
            return false;
        }
        else{
            return true;
        }

    }
</script>
<div class="titleBar">
<h1 align="center">Registrujte Vašu organizaciju</h1>
</div>

<!--Register form-->

<table align="center">
<form name="regOrg" method="post" action="AddOrgDB.php" onsubmit="return checkIt();">
<tr>
<td height="50px"></td>
</tr>
<tr>
<th colspan="2"><h3>Unesite Vaše podatke:</h3></th>
</tr>
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
<input type="submit" name="orgSubmit" id="button" value="Registrujte se">
<input type="reset" name="orgReset" id="button" value="Poništi">
</td>
</tr>
</form>
</table>
<div id="warning"></div>
<br>
<table align="center">
<tr><td>
<a href="Main.php">Nazad</a>
</td></tr>
</table>

</body>
</html>