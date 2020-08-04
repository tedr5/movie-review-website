<?php
    require_once("..\modeles\bd.php");
    $connect = new bd("biographe", "bio");
    $co = $connect->connexion() or die("Erreur de connexion à la base de données");
    session_start();
    if(isset($_SESSION['logged'])) {
        if($_SESSION['role'] == 'Biographe') {
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="..\css\suppression_artiste.css">
    <link rel="stylesheet" type="text/css" href="../css/accueil.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Supprimer un artiste</title>
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
            <li class="dropdown"><div class="dropbtn">Artiste</div>
							<div class="dropdown-content">
							<a href="ajout_artiste.php">Ajouter un artiste</a>
							<a href="modifier_artiste.php">Modifier un artiste</a>
							<a href="supprimer_artiste.php">Supprimer un artiste</a>
			        </div>
            </li>
                <li class="search-bar">
                    <form method="GET">
                        <input class="recherche" type="text" placeholder="Recherche.." name="recherche">
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
                       echo '<li class="dropdown-bis"><div class="dropbtn">Bonjour, '.$_SESSION['prenom'].'</div>
                                        <div class="dropdown-content"><a href="..\controleurs\contr_deconnexion.php">Se Déconnecter</a>
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

        <div class="box_suppression">
      <form class="f_suppression" method="post" action="..\controleurs\contr_supprimer_artiste.php">
        <h1>Supprimer un Acteur/Realisateur</h1>
        <?php
          $requeteRealisateur = mysqli_query($co, "SELECT nomArtiste,prenomArtiste FROM recherche_artiste GROUP BY prenomArtiste") or die ("Execution de la requete impossible".mysqli_error($co));
          $requeteActeur = mysqli_query($co, "SELECT nomArtiste,prenomArtiste FROM recherche_artiste_j GROUP BY prenomArtiste") or die ("Execution de la requete impossible".mysqli_error($co));
          echo '<p class="input_film">PARTIE REALISATEUR: &nbsp';
          while ($data = mysqli_fetch_assoc($requeteRealisateur)) {
            echo '<div><input name="artiste" type="checkbox" value="'.$data['prenomArtiste'].'">&nbsp'.$data['prenomArtiste'].'&nbsp'.$data['nomArtiste'].'</div>';
          } echo '</p>&nbsp&nbsp&nbsp';
          echo '<p class="input_film">PARTIE ACTEUR: &nbsp';
          while ($data = mysqli_fetch_assoc($requeteActeur)) {
            echo '<div><input name="artisteJ" type="checkbox" value="'.$data['prenomArtiste'].'">&nbsp'.$data['prenomArtiste'].'&nbsp'.$data['nomArtiste'].'</div>';
          } echo'</p>';
        ?>
        <p>
          <input name="btn_supprimer" type="submit" value="Supprimer">
        </p>
        </form>

        <?php }
            }
        else {
          echo "Vous n'êtes pas biographe";
            }
         }
        else {
            echo "Vous n'êtes pas connecté !";
        } ?>
	</body>
</html>