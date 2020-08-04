<?php 
	session_start();
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="../css/fiche.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Fiche d'un film</title>
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
				  <li class="dropdown"><div class="dropbtn">Artiste</div>
							<div class="dropdown-content">
							<a href="ajout_artiste.php">Ajouter un artiste</a>
							<a href="supprimer_artiste.php">Supprimer un artiste</a>
			        </div>
                 </li>
  				<li class="search-bar">
    				<form method="GET">
     					<input type="text" placeholder="Recherche.." name="recherche">
      					<button class="btn_recherche" type="submit"><i class="fa fa-search"></i></button>
    				</form>
  				</li>
  				<li class="co-insc">
  					<?php
			
			        echo '<li class="dropdown-bis"><div class="dropbtn">Bonjour, '.$_SESSION['prenom'].'</div>
										<div class="dropdown-content">
										<a href="profil.php">Modifier Profil</a>
										<a href="..\controleurs\contr_deconnexion.php">Se Déconnecter</a>
										</div>
									</li>';
						
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
				$nom =  mysqli_real_escape_string($co, $_POST['nom']);
				//$nom = $_POST['nom'] = $_SESSION['nom'];
				
				$rechercheFilm = mysqli_query($co, "SELECT numFilm, nomFilm, resume, annee, age_restric, critique, note_moy, photo_affiche, lien_ba, langue, duree FROM film WHERE nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$rechercheArtiste = mysqli_query($co, "SELECT nomArtiste, prenomArtiste, photo_prof FROM recherche_artiste WHERE nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$recherchePays = mysqli_query($co, "SELECT GROUP_CONCAT(nomPays SEPARATOR ', ') AS nomPays FROM recherche_pays WHERE nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$rechercheArtisteRea = mysqli_query($co, "SELECT DISTINCT nomArtiste, prenomArtiste, photo_prof FROM recherche_artiste WHERE nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$rechercheArtisteJoue = mysqli_query($co, "SELECT DISTINCT nomArtiste, prenomArtiste, photo_prof FROM recherche_artiste_j WHERE nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$note_moyenne = mysqli_query($co, "SELECT AVG(n.note) AS note_M FROM Noter n, Film f WHERE n.numFilm = f.numFilm AND f.nomFilm = '$nom'") or die ("Execution de la requete impossible".mysqli_error($co));

				$data = mysqli_fetch_assoc($rechercheFilm);
				$data3 = mysqli_fetch_array($rechercheArtiste);
				$data7 = mysqli_fetch_array($note_moyenne);


				
					 echo '<div class="img_res">
					 	<p style="float: left; padding-right: 5%;">
							<img src="'.$data['photo_affiche'].'" style="height: 242px; width: 162px;">
							<h2 class="titre">'.$nom.' ('.$data['annee'].') </h2>
						</p>
						<div style="width: 1100px; font-size: 1.1em;">'.$data['resume'].'<br><br>
							<div style="float: left;">
								Age légal : '.$data['age_restric'].' ans. <br>Film de : '.$data3['prenomArtiste'].' '.$data3['nomArtiste'].'
						</br></div>';
                        echo '<div class="art_cont">
						<div class="artiste" style="margin-top : 5%;">';
							while ($data5 = mysqli_fetch_array($rechercheArtisteRea)) {
								echo '<div style="float:left; ">
									<form method="post" action="biographie.php">
										<input style="height: 200px; width: 150px;" type="image" src="'.$data5['photo_prof'].'">
										<input type="hidden" value="'.$data5['nomArtiste'].'" name="nom">
									</form>
								</div>';
							}
								while($data6 = mysqli_fetch_array($rechercheArtisteJoue)) {
									echo '<div style="float:left; ">
									<form method="post" action="biographie.php">
										<input style="height: 200px; width: 150px;" type="image" src="'.$data6['photo_prof'].'">
										<input type="hidden" value="'.$data6['nomArtiste'].'" name="nom">
									</form>
								</div>';
								}
						echo '</div>
					</div>
					<div class="critique" style="width: 900px; font-size: 1.1em; padding-left: 25%; padding-bottom: 1%;">
						<p><br><br><br><br><br><br><br><br><br><br><h2>Critique du film</h2>'.$data['critique'].'</p>
					</div>';
			
			}?>
	  </div>
	</body>
</html>
