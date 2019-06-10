<!DOCTYPE html>
<html lang="en">
<head>
<title>Log In (Easy Project)</title>
<link type="text/css" rel="stylesheet" href="LogInOrg.css">
</head>
<body>
<script>
    function checkIt() {
        if (document.logIn.orgEmail.value.length == 0) {
            document.getElementById("warning").innerHTML = "Unesite email";
            document.logIn.orgEmail.style.background = "#FF5A36";
            return false;
        }
        else if (document.logIn.orgPassword.value.length < 8) {
            document.getElementById("warning").innerHTML = "Lozinka mora sadržati minimum 8 karaktera";
            document.logIn.orgPassword.style.background = "#FF5A36";
            return false;
        }else{
            return true;
        }

    }
</script>
<!--Logging form-->
<div class="titleBar">
<h1 align="center">Logovanje:</h1>
</div>

<table align="center">
<tr>
<td height="50px"></td>
</tr>
<form name="logIn" method="post" action="LogInOrgDB.php" onsubmit="return checkIt();">
<tr>
<tr>
<th colspan="2"><h3>Unesite Vaše podatke:</h3></th>
</tr>
<td align="right"><label>Email:</label></td>
<td><input type="email" name="orgEmail"></td>
</tr>
<tr>
<td align="right"><label>Lozinka:</label></td>
<td><input type="password" name="orgPassword"></td>
</tr>
<tr>
<td></td>
<td>
<input type="submit" name="log" id="button" value="Log In">
<input type="reset" name="cancel" id="button" value="Poništi">
</td></tr>
<tr>
<td colspan="2" height="30px" align="center">
<div id="warning"></div>
</td>
</tr>
<tr>

</form>
</table>

<br>
<table align="center">
<tr><td height="50px"></td></tr>
<tr><td>
<form method="post" action="Main.php">
<div id="back">
    <input type="submit" name="back" id="button" value="Nazad">
</div>
</td></tr>
</form>
</table>
</body>
</html>