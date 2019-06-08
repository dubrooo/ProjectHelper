<?php
session_start();
if(!isset($_SESSION['u_id']))
        {
            header("Location:adminLogin.php");
        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<link type="text/css" rel="stylesheet" href="Competition.css">
    <title>CompPage</title>

</head>
<body>

<form method="post" action="InstPage.php">
<input type="submit" name="back" value="Nazad">
</form>

<!--Imported data from `competition` table-->
<div id="instComp">

<table border="1" align="center" cellpadding="5px" width="1000px">

<?php
require "db_config.php";

$sql1 = "SELECT * FROM `competition`";
$query1 = mysqli_query($connection,$sql1);

while ($row1 = mysqli_fetch_array($query1)){
	
	echo "<tr>";
	echo "<th><h1 align=\"center\">" . $row1['name_competition'] . "</h1></th></tr><tr>";
	echo "<td><pre>" . $row1['description'] . "</pre></td>";
	echo "</tr>";
	echo "<tr><td height=\"50px\"></td></tr>";
};
?>
</table>
</div>





<div id="comp2">Drugi konkurs<br><br>
    На основу члана 76. Закона о култури („Сл. гласник РС”, бр. 72/09, 13/16 и 30/16 – испр.), члана 41. став 1. тачка 1, 2. и 10. Закона о утврђивању надлежности Аутономне Покрајине Војводине („Сл. гласник РС”, бр. 99/09 и 67/12 - Oдлука УС),  члана 11. и 12. Покрајинске скупштинске одлуке о буџету АП Војводине за 2018. годину („Сл. лист АП Војводине‟, бр. 57/17, 17/18-ребаланс и 29/18-ребаланс), члана 24. Покрајинске скупштинске oдлуке о покрајинској управи („Сл. лист АПВ”, бр. 37/14, 54/14 – др. одлука, 37/16 и 29/17) и у складу са Уредбом о критеријумима, мерилима и начину избора пројеката у култури који се финансирају и суфинансирају из буџета Републике Србије, аутономне покрајине, односно јединица локалне самоуправе  („Сл. гласник РС‟, бр. 105/16 и 112/17)  Покрајински секретаријат за културу, јавно информисање и односе с верским заједницама

    расписује

    КОНКУРС
    за финансирање - суфинансирање пројеката од значаја за културу и уметност националних мањина – националних заједница у АП Војводини у 2018. години

    Покрајински секретаријат за културу, јавно информисање и односе с верским заједницама (у даљем тексту: Секретаријат), финансираће - суфинансираће пројекте од значаја за културу и уметност националних мањина -  националних заједница у 2018. години у областима заштите нематеријалног културног наслеђа и савременог уметничког стваралаштва и издавачке делатности на језицима националних мањина - националних заједница у укупном износу од 8.500.000,00 динара (словима: осаммилионапетстохиљададинара и 00/100).

    I РАСПОДЕЛА СРЕДСТАВА

    1.	У области заштите нематеријалног културног наслеђа и савременог уметничког стваралаштва Секретаријат ће финансирати - суфинансирати:

    •	пројекте у области савременог уметничког стваралаштва националних мањина - националних заједница у АП Војводини:
    - књижевно стваралаштво (манифестације, фестивали, награде, колоније);
    - аматерско позоришно стваралаштво и интерпретацију и репертоарни програм аматерских позоришта на језицима националних мањина – националних заједница (позоришне представе, радионице, фестивали, награде);
    - музичко и музичко-сценско стваралаштво и плес (снимање ауторског материјала, концерти, радионице, фестивали, плес);
    - ликовно, примењено и мултимедијално стваралаштво (изложбе, колоније, радионице);
    - програме гостовања у земљи и иностранству и
    - награде за значајна остварења у области уметности.



    •	 пројекте са циљем заштите, неговања и презентације нематеријалног културног наслеђа, из области изворни народни плес, изворне народне песме и музика, народни обичаје и веровања и стари народни занати:
    - очување, развој и подстицање неговања традиционалне народне културе;
    - фестивале и такмичења од изузетног значаја за очување посебности националних мањина – националних заједница на територији АП Војводине;
    - прикупљање података на терену, истраживање, документовање, издавање брошура, каталога;
    - стварање услова за рад фолклорних ансамбала, изворних народних оркестара и певачких група, радионица старих народних заната (израда народних ношњи, набавка и поправка традиционалних инструмената, набавку основних сировина и опреме за рад радионица старих народних заната);
    - стварање, презентацију и промовисање нових садржаја заснованих на заштити културног наслеђа (израда нових кореографија за фолклорне ансамбле, издавање ЦД-а са изворном народном музиком, гостовања и сл.);
    - изложбе, конкурсне изложбе и такмичења рукотворина старих народних заната (припрема и пропратни рад) и
    - унапређење квалитета презентације традиционалног народног стваралаштва кроз едукацију (стручни семинари, курсеви, летњи кампови, радионице),

    у укупном износу од 6.500.000,00 динара (словима: шестмилионапетстохиљададинара и 00/100).


    2.	У области издавачке делатности на језицима националних мањина - националних заједница Секретаријат ће финансирати – суфинансирати објављивање до сада необјављених издања књига и часописа на језицима националних мањина – националних заједница од значаја за културу и уметност националне мањине – националне заједнице са територије АП Војводине, из књижевности, уметности и друштвених и хуманистичких наука у области културе у укупном износу од 2.000.000,00 динара (словима: двамилионадинара и 00/100)

    II ПОСЕБНИ УСЛОВИ KОНКУРСА

    •	ОБЛАСТ: ЗАШТИТА НЕМАТЕРИЈАЛНОГ КУЛТУРНОГ НАСЛЕЂА И САВРЕМЕНОГ УМЕТНИЧКОГ СТВАРАЛАШТВА НАЦИОНАЛНИХ МАЊИНА - НАЦИОНАЛНИХ ЗАЈЕДНИЦА
    1.	На Конкурсу могу да учествују невладине организације (удружења грађана) и установе културе – други ниво власти (осим установа чији је оснивач АПВ), чије је седиште на територији АП Војводине, чија је претежна делатност култура и које својим стваралаштвом значајно доприносе очувању националног идентитета.
    2.	Секретаријат неће суфинансирати сталне трошкове (грејање, струја, телефон, закуп простора и сл.), плате запослених код Подносиоца пријаве, набавку канцеларијске и крупне опреме и трошкове репрезентације. Трошкови горива се признају највише у износу до 5% од укупног износа додељених средстава. Угоститељске услуге и трошкови горива признаће се у износу већем од 5% у изузетним случајевима када је програм таквог карактера да укључује ове елементе (нпр. исхрана учесника на фестивалима, превоз аутомобилима и сл.), а које ће Комисија посебно разматрати и одобравати.
    3.	На конкурсу се неће суфинансирати гастрономски и туристички фестивали.
    4.	Подносилац пријаве може да учествује у области заштите нематеријалног културног наслеђа и савременог уметничког стваралаштва са највише 1 пројектом.



    •	ОБЛАСТ: ИЗДАВАЧКА ДЕЛАТНОСТ НА ЈЕЗИЦИМА НАЦИОНАЛНИХ МАЊИНА - НАЦИОНАЛНИХ ЗАЈЕДНИЦА
    1.	Право учешћа на конкурсу имаjу јавне нефинансијске организације, приватна предузећа  (привредна друштва и предузетници) и невладине организације (удружења грађана), чије је седиште на територији АП Војводине, а коjи су регистровани за бављење издавачком делатношћу и који послују најмање годину дана пре објављивања конкурса (у даљем тесту: Подносилац пријаве).
    2.	За финансирање – суфинансирање објављивања књига, Секретаријат ће признати трошкове штампања до 300 примерака у стандардним форматима (А4, А5 и Б5) и на стандардном папиру.
    3.	Подносилац пријаве може да учествује у области издавачке делатности на језицима националних мањина – националних заједница са укупно 2 пријаве.

    III ОПШТИ УСЛОВИ KОНКУРСА

    1. Пријавa на Kонкурс за финансирање и суфинансирање програма и пројеката од значаја за културу и уметност националних мањина – националних заједница АП Војводине у 2018. години, подноси се на Обрасцу:

    -   Пријава за област заштите нематеријалног културног наслеђа и савременог уметничког стваралаштва националних мањина  - националних заједница,
    -	Пријава - објављивање књига на језицима националних мањина – националних заједница и
    -	Пријава - објављивање часописа на језицима националних мањина – националних заједница.
    Све пријаве се могу преузети на званичној интернет страници Секретаријата: www.kultura.vojvodina.gov.rs

    2.	Под потупном пријавом се подразумева:
    •	уредно попуњен и оверен образац Пријаве од стране одговорног лица;
    •	достављен детаљан опис пројекта односно програма (у прилогу)
    •	детаљан нацрт буџета по врстама трошкова (у Пријави)
    •	достављена обавезна пратећа документација наведена у пријави (документ о правном статусу издавача - фотокопија о регистрацији код АПР),
    •	доказ о регулисаним ауторским правима (потписан уговор са аутором/преводиоцем/приређивачем) и потписана рецензија- за објављивања књига;
    •	 последњи објављени број часописа или адресу интернет странице, ако је часопис у електронској форми, или рукопис, уколико је реч о првом броју часописа – за објављивање часописа.

    3.	 Пријава се подноси у 2 (два) потписана и оверена примерка.

    4. Рок за подношење Пријаве на Конкурс је 30 дана од дана објављивања у дневном листу „Дневник”, a резултати Конкурса се објављују на званичној интернет страници Секретаријата.
    5.Пријаве са обавезним прилозима се подносе лично - предајом Писарници покрајинских органа управе у Новом Саду (зграда Покрајинске владе у Новом Саду) или се упућују поштом на адресу:
    Покрајински секретаријат за културу, јавно информисање
    и односе с верским заједницама
    21000 Нови Сад
    Булевар Михајла Пупина 16

    Конкурс за финансирање - суфинансирање пројеката од значаја за културу и уметност националних мањина – националних заједница у АП Војводини у 2018. години

    6.	Секретаријат задржава право да од подносилаца који су благовремено поднели пријаве, по потреби, затражи додатне информације.
    7.	Пријавe које се доставе након наведеног рока, пријаве са непотпуном документацијом, пријаве послате путем факса или електронске поште, непотписане и неоверене пријаве, као и пријаве подносилаца којима је Покрајински секретаријат за културу, јавно информисање и односе с верским заједницама током 2017. године доделио средства за финансирање – суфинансирање програма и пројеката у области културе, а који нису поднели извештај о њиховој реализацији, неће се узимати у разматрање
    8.	Неће се узимати у разматрање пријаве корисника са пројектима који су, средствима Секретаријата – по расписаним конкурсима, већ подржани у 2018. години.
    9.	Секретаријат ће пријављене пројекте проследити националним саветима националних мањина – националних заједница ради прибављања мишљења, с обзиром да се национални савети старају о спровођењу културне политике националних мањина – националних заједница и у складу са законом, учествују у процесу одлучивања о појединим питањима у вези са својом културом. Пројекте подносилаца припадника националних мањина – националних заједница које немају формиран национални савет разматраће комисија формирана од стране Секретаријата.
    10.	Након прибављања мишљења националних савета, о избору пројеката по расписаном јавном конкурсу одлучује комисија коју образује Секретаријат, на основу чега покрајински секретар за културу, јавно информисање и односе с верским заједницама доноси решење о распоређивању средстава, које је коначно и које се објављује на званичној интернет страници Секретаријата www.kultura.vojvodina.gov.rs.
    11.	Пријаве и приложена документација се не враћају подносиоцима.
    12.	Додатне информације за област заштите нематеријалног културног наслеђа и савременог уметничког стваралаштва могу се добити у Секретаријату, на е-mail: zuzana.takac@vojvodina.gov.rs
    13.	Додатне информације за област издавачке делатности на језицима националних мањина– националних заједница могу се добити у Секретаријату, на телефон 021/487-4811 или е-mail: ivana.rozic@vojvodina.gov.rs

    IV  КРИТЕРИЈУМИ ЗА ИЗБОР ПРОЈЕКАТА КОЈИ СЕ
    ФИНАНСИРАЈУ – СУФИНАНСИРАЈУ ИЗ БУЏЕТА

    Право учешћа на Конкурсу имају подносиоци:

    •	који се јаве са пројектима који садржински одговарају наведеним областима,
    •	који испуњавају опште и посебне услове Конкурса и
    •	одговарају критеријумима и мерилима утврђеним Уредбом о критеријумима, мерилима и начину избора пројеката у култури који се финансирају и суфинансирају из буџета Републике Србије, аутономне покрајине, односно јединица локалне самоуправе („Сл. гласник РС‟ бр. 105/2016 и 112/17), која је истакнута на интернет страници Секретаријата www.kultura.vojvodina.gov.rs

    ПОКРАЈИНСКИ СЕКРЕТАР
    ________________________
    Драгана Милошевић

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="comp3">Treci konkurs</div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="comp4">Cetvrti konkurs</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<script>

</script>

</body>
</html>

