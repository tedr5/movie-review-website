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

	$requete = "SELECT * FROM Utilisateur WHERE login = '$login'";
	$result = mysqli_query($co,$requete) or die ("Exécution de la requête impossible ".mysqli_error($co));

	if(mysqli_num_rows($result) == 1){
			echo "Erreur, ce login est déjà pris par un autre utilsateur";
		}
		else if(!$nom){
			echo "Erreur, veuillez entrer un nom";
		}
		else if(!$prenom){
			echo "Erreur, veuillez entrer un prénom";
		}
		else if(!$age) {
			echo "Erreur, veuillez entrer un âge";
		}
		else if(!$login) {
			echo "Erreur, veuillez entrer un login";
		}
		else if(!$passwd){
			echo "Erreur, veuillez entrer un mot de passe";
		}
		else if(strlen($passwd)<5){
			echo "Erreur, veuillez entrer un mot de passe avec au moins 5 caractères";
		}
		else if(!(preg_match('@[A-Z]@',$passwd))){
			echo "Erreur, veuillez entrer un mot de passe contenant au moins un caractère majuscule ";
		}
		else if(!(preg_match('@[a-z]@',$passwd))){
			echo "Erreur, veuillez entrer un mot de passe contenant au moins un caractère minuscule ";
		}
		else if(!(preg_match('@[0-9]@',$passwd))){
			echo "Erreur, veuillez entrer un mot de passe contenant au moins un chiffre ";
		}
		else if(!$mail){
			echo "Erreur, veuillez entrer une adresse mail";
		}
		else if(!(preg_match("#^[a-zA-Z0-9.]+@[a-z\-]+\.[a-z]{2,3}$#",$mail))){
			echo "Erreur, adresse mail incorrecte";
		}
	else {
		session_start();
		$_SESSION['input_nom'] = $nom;
		$_SESSION['input_prenom'] = $prenom;
		$_SESSION['input_age'] = $age;
		$_SESSION['input_login'] = $login;
		$_SESSION['input_passwd'] = $passwd;
		$_SESSION['input_mail'] = $mail;
		
		$requete2 = mysqli_query($co, "INSERT INTO Utilisateur(nom, prenom, age, login, mdp, mail, role) VALUES('$nom', '$prenom', '$age', '$login', '$passwd', '$mail', 'Client')") or die ("Exécution de la requête impossible".mysqli_error($co));
		header('Location: ..\vues\accueil.php');
	}
?>