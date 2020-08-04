<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/inscription.css">
		<title>Création d'un compte</title>
	</head>
	<body>
		<a href="accueil.php">Revenir à l'accueil</a>
		<div class="box_inscription">
			<form class="f_inscription" method="post" action="..\controleurs\contr_inscription.php">
				<h1>Inscription</h1>
				<p>Nom :</p>
				<input type="text" name="input_nom" placeholder="Ex: Dupont">
				<p>Prénom :</p>
				<input type="text" name="input_prenom" placeholder="Ex: Jean">
				<p>Age :</p>
				<input type="text" name="input_age" placeholder="Ex: 35">
				<p>Login :</p>
				<input type="text" name="input_login" placeholder="Entrez votre login">
				<p>Mot de passe :</p>
				<input type="password" name="input_passwd" placeholder="Entrez votre mdp">
				<p>Mail :</p>
				<input type="text" name="input_mail" placeholder="Ex: jean.dupont@gmail.com">
				<p>
					<input id="button" name="btn_inscription" type="submit" value="S'inscrire">
				</p>
			</form>
		</div>
	</body>
</html>