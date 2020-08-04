<?php 
	session_start();

	unset($_SESSION['input_login']);
	unset($_SESSION['prenom']);
	unset($_SESSION['role']);
	unset($_SESSION['logged']);
	//session_destroy();

	echo 'Vous êtes déconnecté !';
	header('Location:..\vues\accueil.php');
	exit();
?>