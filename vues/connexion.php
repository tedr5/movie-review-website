<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/connexion.css">
		<title>Connexion</title>
	</head>
	<body>
		<a href="accueil.php">Revenir à l'accueil</a>
		<div class="box_connexion">
			<form class="f_connexion" method="post" action="..\controleurs\contr_connexion.php">
				<h1>Connexion</h1>
				<p>Nom d'utilisateur :</p>
				<input type="text" name="input_login" placeholder="Entrer un login">
				<p>Mot de passe :</p>
				<input type="password" name="input_passwd" placeholder="Entrer le mot de passe">
				<?php
					if(isset($_GET['error'])){
                        $error = $_GET['error'];
                        echo "<p class='error'>".$error."</p>";
                    }
				?>
				<p>Vous n'avez pas encore de compte?</br><a href="inscription.php">Cliquez ici</a><p>
				<p>
					<input name="btn_connecter" type="submit" value="Se connecter">
				</p>
			</form>
		</div>
	</body>
</html>