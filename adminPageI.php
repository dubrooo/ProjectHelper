<?php
session_start();
?>

<!--Admin page is separated in two different pages for additional protection-->
<?php

if(isset($_SESSION['u_id']))
        {
            include ("adminPageII.php");
        }

if(!isset($_SESSION['u_id']))
        {
            header("Location:adminLogin.php");
        }		
		
?>


