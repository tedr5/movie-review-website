<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("consultant", "consultant");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/accueil.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Avis de films</title>
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
  						if(isset($_SESSION['logged'])){
						if($_SESSION['role'] == 'Biographe'){ $_SESSION['fiche_type'] = 'fiche_biographe.php';} 
					        else {$_SESSION['fiche_type'] = 'fiche.php';}
					   } else {$_SESSION['fiche_type'] = 'fiche.php';}
  					?>
  				</li>
  				<li class="search-bar">
    				<form method="GET">
     					<input type="text" placeholder="Recherche.." name="recherche">
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
				$typefiche = $_SESSION['fiche_type'];
				$res = mysqli_real_escape_string($co, $_GET['recherche']);
				$film = mysqli_query($co, 'SELECT nomFilm, photo_affiche FROM Film WHERE nomFilm LIKE "%'.$res.'%"') or die ("Execution de la requete impossible".mysqli_error($co));
				while($data = mysqli_fetch_assoc($film)) {
					echo '<div class="img">
								<form method="post" action="'.$typefiche.'">
									<input style="height: 290px; width: 200px;" type="image" src="'.$data['photo_affiche'].'">
									<input type="hidden" value="'.$data['nomFilm'].'" name="nom">
									<figcaption>'.$data['nomFilm'].'</figcaption>
								</form>
							</div>';
				}
			}
			else if(isset($_GET['value']) AND !empty($_GET['value'])) {
				$typefiche = $_SESSION['fiche_type'];
				$res = $_GET['value'];
				$film = mysqli_query($co, "SELECT nomFilm, photo_affiche FROM genre_film WHERE nomGenre = '$res'") or die ("Execution de la requete impossible".mysqli_error($co));
				while($data = mysqli_fetch_assoc($film)) {
					echo '<div class="img">
								<form method="post" action="'.$typefiche.'">
									<input style="height: 290px; width: 200px;" type="image" src="'.$data['photo_affiche'].'">
									<input type="hidden" value="'.$data['nomFilm'].'" name="nom">
									<figcaption>'.$data['nomFilm'].'</figcaption>
								</form>
							</div>';
				}
			}
			else {
				$requete = mysqli_query($co, "SELECT nomFilm, photo_affiche FROM Film") or die ("Execution de la requete impossible".mysqli_error($co));
				
				while($data = mysqli_fetch_assoc($requete)) {
					$typefiche = $_SESSION['fiche_type'];
					echo '<div class="img">
								<form method="post" action="'.$typefiche.'">
									<input style="height: 290px; width: 200px;" type="image" src="'.$data['photo_affiche'].'">
									<input type="hidden" value="'.$data['nomFilm'].'" name="nom">
									<figcaption>'.$data['nomFilm'].'</figcaption>
								</form>
							</div>';
				}
			}
			?>
		</div>
		
	</body>
</html>