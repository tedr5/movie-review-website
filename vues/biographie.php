<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("consultant", "consultant");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/biographie.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Biographie des artistes</title>
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
		<div class="box_biographie">
			<?php
				$nom = $_POST['nom'];
				$reqArt = mysqli_query($co, "SELECT * FROM Artiste WHERE nomArtiste = '$nom'");
				$data = mysqli_fetch_array($reqArt);
					echo '<div class="photo_prof">
							<img src="'.$data['photo_prof'].'" style="height: 250px; width: 180px;">
							<figcaption>'.$data['prenomArtiste'].' '.$data['nomArtiste'].'</figcaption>
							<figcaption>'.$data['naissance'].'</figcaption>
						  </div>
						  <div class="bio">
						  	<hr style="height: 5px; background-color: black; margin-top: 3%; margin-bottom: 3%;">
						  	<h2 style="text-align: center;">BIOGRAPHIE</h2>
						  	<hr style="height: 5px; background-color: black; margin-top: 3%; margin-bottom: 3%;">
						  	<p> '.$data['Biographie'].' </p>
						  	<hr style="height: 5px; background-color: black; margin-top: 3%; margin-bottom: 3%;">
						  	<hr style="height: 5px; background-color: black; margin-top: 9%; margin-bottom: 3%;">
						  </div>';
			?>
		</div>
	</body>
</html>