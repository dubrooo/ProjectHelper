function checkIt() {
    if (document.createLog.admUser.value.length == 0) {
        document.getElementById("warning").innerHTML = "Unesite korisničko ime";
        document.createLog.admUser.style.background = "#FF5A36";
        return false;
    }
    else if (document.createLog.admPassword.value.length < 8) {
        document.getElementById("warning").innerHTML = "Lozinka mora sadržati minimum 8 karaktera";
        document.createLog.admPassword.style.background = "#FF5A36";
        return false;
    }else{
        return true;
    }

}