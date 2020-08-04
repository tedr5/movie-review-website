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
		<link rel="stylesheet" href="..\css\ajout_artiste.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Ajout d'une biographie</title>
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
             <li class="dropdown"><div class="dropbtn">Artiste</div>
							<div class="dropdown-content">
							<a href="ajout_artiste.php">Ajouter un artiste</a>
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
                            echo '<a href="favoris.php">Favoris</a>';
                       echo '<li class="dropdown-bis"><div class="dropbtn">Bonjour, '.$_SESSION['prenom'].'</div>
                                        <div class="dropdown-content">
                                        <a href="profil.php">Modifier Profil</a>
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
		<div class="box_ajout_artiste">
			<form class="f_ajout_artiste" method="post" action="..\controleurs\contr_ajout_artiste.php" enctype="multipart/form-data">
				<h1>Ajout de l'artiste </h1>
                <p>Catégorie Artiste:
               <input type="radio" name="act_rea" value="acteur" checked="checked"/> Acteur/Actrice
                <input type="radio" name="act_rea" value="realisateur"/> Réalisateur/Réalisatrice
                </p>
                <?php
                    $rechercheFilm = mysqli_query($co, "SELECT nomFilm FROM Film");

                    echo '<p> Films associés:
                    <select class="input_add" name="Film">
                    <option value="">--Choisissez un film--</option>';
                    while($film = mysqli_fetch_assoc($rechercheFilm)) {
                        echo '<option value="'.$film['nomFilm'].'">'.$film['nomFilm'].'</option>';
                    }
                    echo '</select></p>';
                ?>
                <p>Nom :
                <input class="input_add" type="text" name="input_nom" placeholder="Ex: De Niro"/></p>
                <p>Prénom :
                <input class="input_add" type="text" name="input_prenom" placeholder="Ex: Robert"/></p>
                <p>Photo :
                <input type="file" name="uploadedFile" /></p>
                <p>Date de naissance :
                <input class="input_add" type="text" name="input_naissance" placeholder="Format: xx/xx/xxxx"/></p>
                 <p>Biographie :
                <textarea class="input_add" name="input_biographie" maxlength="2000" rows="4" cols="50" placeholder="Entrez votre biographie...(max: 2000 caractères)"></textarea></p>
                 <input type="submit"  name="btn_ajout_bio"  value="Ajouter"/>
			</form>
		</div>
        <?php 
            }
        }
            else {
          echo "Vous n'êtes pas biographe";
            }
         }
        else {
            echo "Vous n'êtes pas connecté !";
        }
        ?>
	</body>
</html>