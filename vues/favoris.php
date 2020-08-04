<?php 
	session_start();
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/accueil.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Films favoris</title>
	</head>
	<body>
		<div class="box_dropdown">
			<img src="../images/logo.png" style="width: 64px; height: 55px; float: left;">
			<ul class="ul-drop">
 				<li class="li-drop"><a class="a-drop" href="accueil.php">Accueil</a></li>
  				<li class="dropdown"><a class="dropbtn" href="film.php" >Films</a>
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
		<div class="contenu_bis">
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
				$film = mysqli_query($co, "SELECT f.nomFilm, f.photo_affiche FROM Film f, posseder p, genre g WHERE f.numFilm = p.numFilm AND p.numGenre = g.numGenre AND g.nomGenre = '$res'") or die ("Execution de la requete impossible".mysqli_error($co));
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
        ?>
        </div>
        <div class="contenu">
          <?php
            $currentU = $_SESSION['prenom'];
            $r_numU = "SELECT numUtilisateur FROM Utilisateur WHERE prenom = '$currentU'";
            $numU = mysqli_query($co,$r_numU) or die ("Execution de la requete impossible".mysqli_error($co));

            $numUtilisateur = mysqli_fetch_object($numU);

            $r_num = "SELECT numFilm FROM Aimer WHERE numUtilisateur = '$numUtilisateur->numUtilisateur'";
            $num = mysqli_query($co,$r_num) or die ("Execution de la requete impossible".mysqli_error($co));

            while($numF = mysqli_fetch_object($num)){
              $r_favori = mysqli_query($co, "SELECT nomFilm FROM Film  WHERE numFilm = '$numF->numFilm'") or die ("Execution de la requete impossible".mysqli_error($co));
              $favori = mysqli_fetch_object($r_favori);
              $r_photo = mysqli_query($co, "SELECT photo_affiche FROM Film WHERE nomFilm = '$favori->nomFilm'") or die ("Execution de la requete impossible".mysqli_error($co));
              $photo = mysqli_fetch_object($r_photo);

               echo '<div class="img">
                <form method="post" action="fiche.php">
                  <input style="height: 290px; width: 200px;" type="image" src="'.$photo->photo_affiche.'">
                  <input type="hidden" value="'.$favori->nomFilm.'" name="nom">
                  <figcaption>'.$favori->nomFilm.'</figcaption>
                </form>
              </div>';
            }
          }
          ?>
        </div>
    </body>
</html>