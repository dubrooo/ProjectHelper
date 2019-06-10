<?php
session_start();
if(!isset($_SESSION['u_id']))
        {
            header("Location:adminLogin.php");
        }
 require_once 'db_config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>InstPage</title>
    <style>
        #institutions{
            margin-left: 20%;
            margin-right: 20%;
            margin-bottom: 60px;
        }
        #institution{
            margin-left: 10%;
            margin-top: 60px;
            font-size: xx-large;
        }
        #opt{
            font-size: large;
        }

    </style>
</head>
<body>
<form method="post" action="adminPageI.php">
<input type="submit" name="back" value="Nazad">
</form>

<table align="center">
<tr>
<th align="center"><h1>Detaljniji pregled</h1></th>
</tr>
<form name="selectComp" method="POST" action="Competition.php">
<div id="institutions">
    <?php
        $sql = "SELECT * FROM institution";
        $query = mysqli_query($connection,$sql);
        $results = mysqli_fetch_all($query,MYSQLI_ASSOC);

        foreach ($results as $result) {
			echo "<tr><td>";
            echo "<select id='{$result['id_institution']}' style='width:300px;'>";
            $id = (int)$result['id_institution'];
            echo "<option value=''>{$result['name_institution']}</option>";

            $sql2 = "SELECT name_competition,id_competition FROM competition WHERE id_institution = $id";
            $query2 = mysqli_query($connection,$sql2);
            $results2 = mysqli_fetch_all($query2,MYSQLI_ASSOC);
            foreach ($results2 as $result2) {
                echo "<option value='{$result2['id_competition']}'>{$result2['name_competition']}</option>";
            }
            echo "</select></td></tr><tr><td height='10px'></td></tr>";
        }
    ?>
</div>
</form>
</td>
</tr>
</table>

<script>

    function mouseOver(obj)
    {
        obj.style.backgroundColor = "#e98";
    }
    function mouseOut(obj2)
    {
        obj2.style.backgroundColor = "#fff";
    }

    function toPageCompetition(src) {
        window.location=src;
    }
	addEventListener('change',function(e){
		console.log(e.target.value);
		var id = e.target.value;
		window.location = 'Competition.php?id='+id;
	});

</script>

</body>
</html>
