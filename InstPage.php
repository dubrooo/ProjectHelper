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
    <title>MainPage</title>
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
<div id="institutions">
    <form id="institutions">
        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Ministarstvo kulture i informisanja</option>
        <?php

            $sql = "SELECT * FROM competition WHERE id_institution = 1";
            $query = mysqli_query($connection,$sql);
            $results = mysqli_fetch_all($query,MYSQLI_ASSOC);

            foreach ($results as $result) {
                echo "<option value=\"Competition.php/#comp1\" id=\"opt\"'>- {$result['name_competition']}</option>";
            }
        ?>
        </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Ministarstvo za omladinu i sport</option>
            <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
            <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
            <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
            <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Grad Subotica</option>
            <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
            <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
            <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
            <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Pokrajinski sekretarijat za kulturu</option>
            <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
            <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
            <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
            <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
              <option value="" selected>Pokrajinski sekretarijat za obrazovanje</option>
                <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
                <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
                <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
                <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>

         <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
              <option value="" selected>Pokrajinski sekretarijat za poljoprivredu</option>
              <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
              <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
              <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
              <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
         </select>

         <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
              <option value="" selected>Pokrajinski sekretarijat za privredu</option>
              <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
              <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
              <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
              <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
         </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Friedrich Ebert Stiftung</option>
            <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
            <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
            <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
            <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>

        <select name="institution" id="institution" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)" onchange="toPageCompetition(this.value)">
            <option value="" selected>Fond za otvoreno društvo</option>
            <option value="Competition.php/#comp1" id="opt"> - Konkurs iz oblasti vizuelnih umetnosti</option>
            <option value="Competition.php/#comp2" id="opt"> - Konkurs za nacionalne manjine</option>
            <option value="Competition.php/#comp3" id="opt"> - Konkurs za izdavanje časopisa</option>
            <option value="Competition.php/#comp4" id="opt"> - Konkurs za mlade</option>
        </select>
    </form>
</div>

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

</script>

</body>
</html>
