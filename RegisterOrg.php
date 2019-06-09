<!DOCTYPE html>
<html lang="en">
<head>
<title>Registracija (Easy Project)</title>
</head>
<style type="text/css">
    div.err {
        margin-left: 15px;
        display: inline;
    }
</style>
<body>
<script>
    function validateForm() {
        if (document.regOrg.orgPassword.value.length < 8) {
            document.getElementById("un").innerHTML = "Lozinka mora sadržati minimum 8 karaktera";
            document.regOrg.orgPassword.style.background = "red";
            return false;
        }
        else if (document.regOrg.orgName.value.length == 0) {
            document.getElementById("un").innerHTML = "Sva polja za unos moraju biti popunjena";
            document.regOrg.orgName.style.background = "red";
            return false;
        }
        else{
            return true;
        }

    }
</script>
<h1>Registrujte Vašu organizaciju</h1>

<!--Register form-->
<table border="1">
<form name="regOrg" method="post" action="AddOrgDB.php" onsubmit="return validateForm();">
<tr>
<td align="right"><label>Email:</label></td>
<td><input type="email" name="orgEmail"></td>
</tr>
<tr>
<td align="right"><label>Lozinka:</label></td>
<td><input type="password" name="orgPassword"></td>
</tr>
    <div id="un" class="err"></div>
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