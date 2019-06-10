<!DOCTYPE html>
<html lang="en">
<head>
<title>Log In (Easy Project)</title>
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
<h1>Logovanje:</h1>
<table border="1">
<form name="logIn" method="post" action="LogInOrgDB.php" onsubmit="return checkIt();">
<tr>
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
<input type="submit" name="log" value="Log In">
<input type="reset" name="cancel" value="Poništi">
</td>
</tr>
</form>
</table>
<div id="warning"></div>
<br>
<a href="Main.php">Nazad</a>
</body>
</html>