<?php
session_start();
if(isset($_SESSION['u_id']))
        {
            include("OrgPage.php");
        }

if(!isset($_SESSION['u_id']))
        {
            header("Location:LogInOrg.php");
        }		
		
?>