<?php
	session_start();
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/profil.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Modification du profil</title>
	</head>
	<body>
		<div class="box_dropdown">
			<img src="../images/logo.png" style="width: 64px; height: 55px; float: left;">
			<ul class="ul-drop">
 				<li class="li-drop"><a class="a-drop" href="accueil.php">Accueil</a></li>
  				<li class="dropdown"><div class="dropbtn">Films</div>
  					<div class="dropdown-content">
      					<a href="accueil.php?value=Action">Action</a>
      					<a href="accueil.php?value=Drame">Drame</a>
     					<a href="accueil.php?value=Thriller">Thriller</a>
     					<a href="accueil.php?value=Comédie">Comédie</a>
     					<a href="accueil.php?value=Fantastique">Fantastique</a>
     					<a href="accueil.php?value=Horreur">Horreur</a>
     					<a href="accueil.php?value=Science-fiction">Science-fiction</a>
    				</div>
  				</li>
  				<li class="li-drop">
  			<?php
              if(isset($_SESSION['logged']) && $_SESSION['role'] != 'Biographe') {
              	echo '<a href="ajout_film.php">Ajouter une fiche de film</a>';
            	if($_SESSION['role'] == 'Admin') {
                  echo '<a href="supprimer_film.php">Supprimer une fiche de film</a>';
              	}
               }
            	else if(isset($_SESSION['logged']) && $_SESSION['role'] == 'Biographe') {
                echo '<li class="dropdown"><div class="dropbtn">Artiste</div>
              		<div class="dropdown-content">
              			<a href="ajout_artiste.php">Ajouter un artiste</a>
              			<a href="supprimer_artiste.php">Supprimer un artiste</a>
              		</div>';
             }
            ?>
  				</li>
  				<li class="search-bar">
    				<form method="GET">
     					<input class="rech" type="text" placeholder="Recherche.." name="recherche">
      					<button class="btn_recherche" type="submit"><i class="fa fa-search"></i></button>
    				</form>
  				</li>
  				<li class="co-insc">
  					<?php
						if(!isset($_SESSION['logged'])) {
							echo '<a href="connexion.php"> Se connecter</a>';
							echo '<a href="inscription.php">S\'inscrire</a>';
						}
						else {
							echo '<a href="favoris.php">Favoris</a>
				</li>';
							echo '<li class="dropdown-bis"><div class="dropbtn">Bonjour, '.$_SESSION['prenom'].'</div>
										<div class="dropdown-content">';
										if($_SESSION['role'] == 'Admin') {
											echo '<a href="inscription_admin.php">Créer un utilisateur';
										}
											echo '<a href="profil.php">Modifier Profil</a>
											<a href="..\controleurs\contr_deconnexion.php">Se Déconnecter</a>
										</div>
									</li>';
						}
					?>
			</ul>
		</div>
		<div class="contenu">
			<?php
			if(isset($_GET['recherche']) AND !empty($_GET['recherche'])) {
				$res = mysqli_real_escape_string($co, $_GET['recherche']);
				$film = mysqli_query($co, 'SELECT nomFilm, photo_affiche FROM Film WHERE nomFilm LIKE "%'.$res.'%"') or die ("Execution de la requete impossible".mysqli_error($co));
				while($data = mysqli_fetch_assoc($film)) {
					echo '<div class="img">
								<form method="post" action="fiche.php">
									<input style="height: 290px; width: 200px;" type="image" src="'.$data['photo_affiche'].'">
									<input type="hidden" value="'.$data['nomFilm'].'" name="nom">
									<figcaption>'.$data['nomFilm'].'</figcaption>
								</form>
							</div>';
				}
			}
			else if(isset($_GET['value']) AND !empty($_GET['value'])) {
				$res = $_GET['value'];
				$film = mysqli_query($co, "SELECT nomFilm, photo_affiche FROM genre_film WHERE nomGenre = '$res'") or die ("Execution de la requete impossible".mysqli_error($co));
				while($data = mysqli_fetch_assoc($film)) {
					echo '<div class="img">
								<form method="post" action="fiche.php">
									<input style="height: 290px; width: 200px;" type="image" src="'.$data['photo_affiche'].'">
									<input type="hidden" value="'.$data['nomFilm'].'" name="nom">
									<figcaption>'.$data['nomFilm'].'</figcaption>
								</form>
							</div>';
				}
			}
			else {
			$login = $_SESSION['input_login'];
			$profil = mysqli_query($co, "SELECT * FROM Utilisateur WHERE login = '$login'");
			while($data = mysqli_fetch_assoc($profil)) {
		?>
		</div>
		<div class="box_profil">
			<form class="f_profil" method="post" action="..\controleurs\contr_profil.php">
				<h1>Profil User</h1>
				<p>Nom :</p>
				<input class="inp_t" type="text" name="input_nom" value="<?php if(isset($_SESSION['logged'])){ echo $data['nom']; }?>">
				<p>Prénom :</p>
				<input class="inp_t" type="text" name="input_prenom" value="<?php if(isset($_SESSION['logged'])){ echo $data['prenom']; }?>">
				<p>Age :</p>
				<input class="inp_t" type="text" name="input_age" value="<?php if(isset($_SESSION['logged'])){ echo $data['age']; }?>">
				<p>Login :</p>
				<input class="inp_t" type="text" name="input_login" value="<?php if(isset($_SESSION['logged'])){ echo $_SESSION['input_login']; }?>">
				<p>Mot de passe :</p>
				<input class="inp_t" type="password" name="input_passwd" value="<?php if(isset($_SESSION['logged'])){ echo $_SESSION['input_passwd']; }?>">
				<p>Mail :</p>
				<input class="inp_t" type="text" name="input_mail" value="<?php if(isset($_SESSION['logged'])){ echo $data['mail']; }?>">
				<?php
					if(isset($_GET['error'])){
                        $error = $_GET['error'];
                        echo "<p class='error'>".$error."</p>";
                    }
                }
				?>
				<p>
					<input id="button" name="btn_modifier" type="submit" value="Modifier">
				</p>
			</form>
		</div>
	</body>
</html>
<?php } ?>