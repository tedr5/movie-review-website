<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");

	$nom = $_POST['input_nom'];
	$prenom = $_POST['input_prenom'];
	$age = $_POST['input_age'];
	$login = $_POST['input_login'];
	$passwd = $_POST['input_passwd'];
	$mail = $_POST['input_mail'];

	if(strlen($passwd)<5){
		header('Location: ..\vues\profil.php?error=Erreur, veuillez entrer un mot de passe avec au moins 5 caractères');
	}
	else if(!(preg_match('@[A-Z]@',$passwd))){
		header('Location: ..\vues\profil.php?error=Erreur, veuillez entrer un mot de passe contenant au moins un caractère majuscule');
	}
	else if(!(preg_match('@[a-z]@',$passwd))){
		header('Location: ..\vues\profil.php?error=Erreur, veuillez entrer un mot de passe contenant au moins un caractère minuscule');
	}
	else if(!(preg_match('@[0-9]@',$passwd))){
		header('Location: ..\vues\profil.php?error=Erreur, veuillez entrer un mot de passe contenant au moins un chiffre');
	}
	else {
		$modif = mysqli_query($co, "UPDATE Utilisateur SET nom = '$nom', prenom = '$prenom', age = '$age', login = '$login', mdp = '$passwd', mail = '$mail' WHERE login = '$login' AND mdp = '$passwd'") or die ("Execution de la requete impossible".mysqli_error($co));
		
		//header('Location : ..\vues\profil.php?error=Mise à jour du profil');
		echo 'profil modifié !<br>
		<a href="..\vues\profil.php?error=Mise à jour du profil effectuée !">Profil</a>';
	}
?>
