<?php
 	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données"); 
	session_start();

	if(isset($_POST['nomAdd'])) {
		$nomFilm = $_POST['nomAdd'];
		$login = $_SESSION['input_login'];
		$rechnumF = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'");
		$numF = mysqli_fetch_array($rechnumF);
		$rechnumU = mysqli_query($co, "SELECT numUtilisateur FROM Utilisateur WHERE login = '$login'");
		$numU = mysqli_fetch_array($rechnumU);
		$ajouterFavori = mysqli_query($co,"INSERT INTO Aimer VALUES('$numF[0]','$numU[0]')") or die ("Execution de la requete impossible ".mysqli_error($co));
 		header('Location: ..\vues\favoris.php');
 	}
 	else if (isset($_POST['nomSuppr'])) {
 		$nomFilm = $_POST['nomSuppr'];
		$login = $_SESSION['input_login'];
		$rechnumF = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'");
		$numF = mysqli_fetch_array($rechnumF);
		$rechnumU = mysqli_query($co, "SELECT numUtilisateur FROM Utilisateur WHERE login = '$login'");
		$numU = mysqli_fetch_array($rechnumU);
		$supprimerFavori = mysqli_query($co,"DELETE FROM Aimer WHERE numFilm = '$numF[0]' AND numUtilisateur = '$numU[0]'") or die ("Execution de la requete impossible ".mysqli_error($co));
 		header('Location: ..\vues\favoris.php');
 	}
 

?>