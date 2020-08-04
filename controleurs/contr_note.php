<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();

	$note = $_POST['note'];
	$login = $_SESSION['input_login'];
	$nomFilm = $_POST['nomFilm'];

	$rechnumU = mysqli_query($co, "SELECT numUtilisateur FROM Utilisateur WHERE login = '$login'");
	$numU = mysqli_fetch_array($rechnumU);
	$rechnumF = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'");
	$numF = mysqli_fetch_array($rechnumF);
	$rechercheNote = mysqli_query($co, "SELECT * FROM noter WHERE numFilm = '$numF[0]' AND numUtilisateur = '$numU[0]'");

	if(empty($rechercheNote)) {
		$insert_note = mysqli_query($co, "INSERT INTO noter VALUES('$numU[0]', '$numF[0]', '$note')") or die ("Execution de la requete impossible ".mysqli_error($co));
		header('Location: ..\vues\accueil.php');
	}
	else {
		echo 'Vous avez déjà noté ce film.';
	}
?>