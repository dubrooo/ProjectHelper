<?php
session_start();
?>
<!--Page made for admin account to log in admin page-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log in admin</title>
   </head>
<style type="text/css">
    body {
        font-family: Bahnschrift SemiLight;
    }

    div#warning {
        display: inline;
        color: #FF5A36;
        font-weight: bolder;
    }
</style>
<body>

<script>
    function checkIt() {
        if (document.logIn.admUser.value.length == 0) {
            document.getElementById("warning").innerHTML = "Unesite korisničko ime";
            document.logIn.admUser.style.background = "#FF5A36";
            return false;
        }
        else if (document.logIn.admPassword.value.length < 8) {
            document.getElementById("warning").innerHTML = "Lozinka mora sadržati minimum 8 karaktera";
            document.logIn.admPassword.style.background = "#FF5A36";
            return false;
        }else{
            return true;
        }

    }
</script>

<!--Log in form-->
<table align="center">
<form name="logIn" method="post" action="adminLogin.php" onsubmit="return checkIt();">
<tr>
<td align="center" colspan="2"><h1>Log in</h1></td>
</tr><tr>
<td><label>Username:</label></td>
<td><input type="text" name="admUser"></td>
</tr><tr>
<td><label>Password:</label></td>
<td><input type="password" name="admPassword"></td>
</tr><tr>
<td height="20px" colspan="2"><div id="warning"></div></td>
</tr><tr>
<td colspan="2" align="center"><input type="submit" name="log" value="Log in">
<input type="reset" name="reset" value="Cancel"></td>
</tr>
</form>

</table>


</body>
</html>