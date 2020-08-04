<?php
require_once("..\modeles\bd.php");
	$connect = new bd("administrateur", "admin");
  	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
 	session_start();

 	$com = $_POST['com'];

 	$supprFilm = mysqli_query($co, "DELETE FROM commentaire WHERE commentaire = '$com'") or die ("Execution de la requete impossible".mysqli_error($co));
 	header('Location: ..\vues\accueil.php');
?>