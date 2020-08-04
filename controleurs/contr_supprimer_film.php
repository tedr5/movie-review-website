<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("administrateur", "admin");
  	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
 	session_start();

 	$film = $_POST['film'];

 	$supprFilm = mysqli_query($co, "DELETE FROM Film WHERE nomFilm = '$film'") or die ("Execution de la requete impossible".mysqli_error($co));
 	header('Location: ..\vues\accueil.php');


?>