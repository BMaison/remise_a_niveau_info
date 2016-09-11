<?php
session_start();
?>
<!DOCTYPE html>

<html>

<head>
<title>PHP</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
<link  rel="stylesheet"  href="styles/style.css"  type="text/css"  media="screen"/>  
</head>

<body>

<?php
$mdp = "";
$bdd = new PDO('mysql:host=localhost;port=$3306;dbname=remise_niveau_info;charset=utf8','root', $mdp); 
$rep = $bdd->query('select * from etudiant');
?>

<form method="get" action="" autocomplete="off">  
	<p>Numéro d'étudiant :
		<input type="text" name="numEtu" value=""/>
	</p>
	<p>
		<input type="submit" value="Rechercher">
	</p>
</form>

<?php
if(isset($_GET["numEtu"])){
	echo"Etudiant numéro ".$_GET['numEtu']." :<br>";
	$bdd = new PDO('mysql:host=localhost;port=3306;dbname=remise_niveau_info;charset=utf8','root', $mdp); 
	$rep = $bdd->query('select * from etudiant where num_etu = "'. $_GET['numEtu'].'"');
	while($ligne = $rep ->fetch()){
		echo "".$ligne["nom"]."";
	}
}
else{
	echo"Veuillez rentrer un numéro.";
}
?>

</body>

</html>