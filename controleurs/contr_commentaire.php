<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();

	$texte = mysqli_real_escape_string($co, $_POST['text_com']);
	$nomFilm = $_POST['nomFilm'];
	$login = $_SESSION['input_login'];
	$date = date("Y-m-d H:i:s");

	$requete = mysqli_query($co, "SELECT numUtilisateur FROM Utilisateur WHERE login = '$login'");
	$requete2 = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'");
	
	$numU = mysqli_fetch_array($requete);
	
	$numF = mysqli_fetch_array($requete2);

	$commentaire = mysqli_query($co, "INSERT INTO commentaire(commentaire, date, numUtilisateur, numFilm) VALUES('$texte', '$date', '$numU[0]', '$numF[0]')") or die ("Exécution de la requête impossible. ".mysqli_error($co));
	header('Location: ..\vues\accueil.php');
?>