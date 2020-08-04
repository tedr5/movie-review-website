<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("biographe", "bio");
  	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
 	session_start();

 	if(isset($_POST['artiste'])) {
 		$prenomArtiste = $_POST['artiste'];
 		$rechnumA = mysqli_query($co, "SELECT numArtiste FROM Artiste WHERE prenomArtiste = '$prenomArtiste'");
		$numA = mysqli_fetch_array($rechnumA);
	 	$supprArtiste = mysqli_query($co, "DELETE FROM Realiser WHERE numArtiste = '$numA[0]'") or die ("Execution de la requete impossible".mysqli_error($co));
	 	$supprArt = mysqli_query($co, "DELETE FROM Artiste WHERE prenomArtiste = '$prenomArtiste'") or die ("Execution de la requete impossible".mysqli_error($co));
	 	header('Location: ..\vues\accueil.php');
 	}
 	else {
 		$prenomArtisteJ = $_POST['artisteJ'];
 		$rechnumA = mysqli_query($co, "SELECT numArtiste FROM Artiste WHERE prenomArtiste = '$prenomArtisteJ'");
		$numA = mysqli_fetch_array($rechnumA);
	 	$supprArtisteJ = mysqli_query($co, "DELETE FROM jouer WHERE numArtiste = '$numA[0]'") or die ("Execution de la requete impossible".mysqli_error($co));
	 	$supprA = mysqli_query($co, "DELETE FROM Artiste WHERE prenomArtiste = '$prenomArtisteJ'") or die ("Execution de la requete impossible".mysqli_error($co));
	 	header('Location: ..\vues\accueil.php');
 	}
?>