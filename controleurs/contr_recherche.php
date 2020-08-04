<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");

	if(isset($_POST['recherche']) AND !empty($_POST['recherche'])) {
		$res = mysqli_real_escape_string($co, $_POST['recherche']);
		$film = mysqli_query($co, 'SELECT nomFilm, photo_affiche FROM Film WHERE nomFilm LIKE "%'.$res.'%"') or die ("Execution de la requete impossible".mysqli_error($co));
		
	}

?>