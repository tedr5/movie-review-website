<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("root", "");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");

	
	$nom = $_POST['input_nom'];
	$prenom = $_POST['input_prenom'];
	$age = $_POST['input_age'];
	$login = $_POST['input_login'];
	$passwd = $_POST['input_passwd'];
	$mail = $_POST['input_mail'];
	
	$requete = "SELECT * FROM Utilisateur WHERE login = '$login'";
	$result = mysqli_query($co,$requete) or die ("Exécution de la requête impossible ".mysqli_error($co));
	$search_role = mysqli_fetch_assoc($result);

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
		$_SESSION['input_nom'] = $login;
		$_SESSION['input_prenom'] = $prenom;
		$_SESSION['input_age'] = $age;
		$_SESSION['input_login'] = $login;
		$_SESSION['input_passwd'] = $passwd;
		$_SESSION['input_mail'] = $mail;
		
		if(isset($_POST['input_admin'])) {
			$admin = $_POST['input_admin'];
			$requete2 = mysqli_query($co, "INSERT INTO Utilisateur(nom, prenom, age, login, mdp, mail, role) VALUES('$nom', '$prenom', '$age', '$login', '$passwd', '$mail', '$admin')");
		}
		else if(isset($_POST['input_client'])) {
			$client = $_POST['input_client'];
			$requete6 = mysqli_query($co, "INSERT INTO Utilisateur(nom, prenom, age, login, mdp, mail, role) VALUES('$nom', '$prenom', '$age', '$login', '$passwd', '$mail', '$client')");
		}
		else if(isset($_POST['input_biographe'])) {
			$biographe = $_POST['input_biographe'];
			$requete7 = mysqli_query($co, "INSERT INTO Utilisateur(nom, prenom, age, login, mdp, mail, role) VALUES('$nom', '$prenom', '$age', '$login', '$passwd', '$mail', '$biographe')");
		}
		$requete3 = mysqli_query($co, "CREATE USER '$login'@'127.0.0.1' IDENTIFIED BY '$passwd'") or die ("Exécution de la requête impossible".mysqli_error($co));

		if($search_role['role'] == 'Client') {
			$requete4 = mysqli_query($co, "GRANT SELECT, INSERT, UPDATE ON critique_film.* TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
			$requete4 = mysqli_query($co, "GRANT DELETE ON critique_film.aimer TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
		}
		else if($search_role['role'] == 'Administrateur') {
			$requete5 = mysqli_query($co, "GRANT ALL ON critique_film.* TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
		}
		else if($search_role['role'] == 'Biographe') {
			$requete8 = mysqli_query($co, "GRANT SELECT, INSERT, DELETE ON critique_film.artiste TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
			$requete9 = mysqli_query($co, "GRANT SELECT, INSERT, DELETE ON critique_film.jouer TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
			$requete10 = mysqli_query($co, "GRANT SELECT, INSERT, DELETE ON critique_film.realiser TO '$login'@'127.0.0.1';") or die ("Exécution de la requête impossible".mysqli_error($co));
		}
		header('Location: ..\vues\accueil.php');
	}
?>