<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");

	$login = $_POST['input_login'];
	$mdp = $_POST['input_passwd'];

	if(isset($_POST) && !empty($_POST['input_login']) && !empty($_POST['input_passwd'])) {
		$recherche = mysqli_query($co, "SELECT login, mdp, prenom, role FROM Utilisateur WHERE login = '$login'") or die('Erreur de la requête'.$requete.'<br>'.mysql_error());
		$resultat = mysqli_fetch_assoc($recherche);

		if ($resultat['mdp'] != $mdp)
		{
			header('Location: ..\vues\connexion.php?error=Login / password incorrecte, Veuillez recommencer.');
		
		}
		else
		{
    	   	session_start();
        	$_SESSION['input_login'] = $login;
        	$_SESSION['input_passwd'] = $mdp;
        	$_SESSION['prenom'] = $resultat['prenom'];
        	$_SESSION['role'] = $resultat['role'];
        	$_SESSION['logged'] = true;
        	echo 'Vous êtes connecté !';
        	header('Location: ..\vues\accueil.php');
        	exit();
		}
	}
	else {
		header('Location: ..\vues\connexion.php?error=Vous avez oublié de remplir un champ.');
	}
?>