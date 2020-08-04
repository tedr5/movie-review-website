<?php
    require_once("..\modeles\bd.php");
    $connect = new bd("consultant", "consultant");
    $co = $connect->connexion() or die("Erreur de connexion à la base de données");
    session_start();
?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="..\css\ajout_film.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Ajout d'un film</title>
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
                        if(isset($_SESSION['logged'])) {
                        echo '<a href="ajout_film.php">Ajouter une fiche de film</a>';
                            if($_SESSION['role'] == 'Admin') {
                                echo '<a href="supprimer_film.php">Supprimer une fiche de film</a>';
                        }
                    }
                    ?>
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
		<div class="box_ajout_film">
			<form class="f_ajout_film" method="post" action="..\controleurs\contr_ajout_film.php" enctype="multipart/form-data">
				<h1>Ajout de film </h1>
                <p> Affiche du film :</p>
                <input class="input_add" type="file" name="uploadedFile" />
                <p>Titre du film :</p>
                <input class="input_add" type="text" name="input_nomFilm" placeholder="Ex: Le Roi Lion"/>
                <p>Lien bande annonce :</p>
                <input class="input_add" type="text" name="input_ba" placeholder="Ex: https://www.youtube.com/embed/..."/>
                 <p>Synopsis :</p>
                <textarea class="input_add" name="input_resume" maxlength="2000" rows="4" cols="50" placeholder="Entrez votre résumé...(max: 2000 caractères)"></textarea>
                <p>Année :</p>
                <input class="input_add" type="text" name="input_annee" placeholder="Ex: 2019"/>
                <p>Age restriction :</p>
                <input class="input_add" type="text" name="input_ageRestrict" placeholder="Ex: -12"/>
                <p>Langue :</p>
                <input class="input_add" type="text" name="input_langue" placeholder="Ex: vf,vo,..."/>
                <p> Durée :</p>
                <input class="input_add" type="text" name="input_duree" placeholder="Ex: 2h10"/>
                <p> Critique :</p>
                <textarea class="input_add" name="input_critique" maxlength="2000" rows="4" cols="50" placeholder="Entrez votre critique...(max: 2000 caractères)"></textarea>
                <input type="submit"  name="btn_ajout_film"  value="Ajouter"/>
			</form>
		</div>
        <?php } ?>
	</body>
</html>