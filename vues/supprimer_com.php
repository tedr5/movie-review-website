<?php
  require_once("..\modeles\bd.php");
  $connect = new bd("administrateur", "admin");
  $co = $connect->connexion() or die("Erreur de connexion à la base de données");
  session_start();

  if(isset($_SESSION['logged'])) {
    if($_SESSION['role'] == 'Admin') {

?>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../css/suppression_film.css">
    <link rel="stylesheet" type="text/css" href="../css/accueil.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Suppression de film</title>
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
                  echo '<a href="supprimer_film">Supprimer une fiche de film</a>';
              }
            }
            ?>
          </li>
          <li class="search-bar">
            <form action="">
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
    <div class="box_suppression">
      <form class="f_suppression" method="post" action="..\controleurs\contr_supprimer_com.php">
        <h1>Supprimer un film</h1>
        <?php
          $nom = $_POST['nomFilm']; 
          $numFil = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nom'");
          $numF = mysqli_fetch_array($numFil);

          $rechCom = mysqli_query($co, "SELECT c.commentaire, c.date, u.prenom FROM commentaire c, utilisateur u WHERE c.numUtilisateur = u.numUtilisateur AND c.numFilm = '$numF[0]'");

          while ($data = mysqli_fetch_assoc($rechCom)) {
            echo '<p class="input_com"><input name="com" type="checkbox" value="'.$data['commentaire'].'">&nbsp'.$data['commentaire'].'</p><br>';
          }
        ?>
        <p>
          <input name="btn_supprimer" type="submit" value="Supprimer">
        </p>

        <?php
        }
        else {
          echo "Vous n'êtes pas administrateur";
        }
      }
      else {
        echo "Vous n'êtes pas connecté !";
      }
        ?>
      
      </form>
    </div>
  </body>
</html>