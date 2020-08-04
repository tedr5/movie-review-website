<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();
	
    if(isset($_POST['Film'])){
		$nomFilm = $_POST['Film'];
	} else { echo 'Nom du film non defini';}

    if(isset($_POST['act_rea'])){
		$categorie = $_POST['act_rea'];
	} else { echo 'La categorie artiste est non definie';}
	if(isset($_POST['input_nom']) ){
		$nom = mysqli_real_escape_string($co, $_POST['input_nom']);
	} else { echo 'Le nom de l\'artiste est non defini';}
	if( isset( $_POST['input_prenom'])){
		$prenom = $_POST['input_prenom'];
	} else { echo 'Le prenom de l\'artiste est non defini';}
	if(isset($_POST['input_naissance'])){
		$naissance = mysqli_real_escape_string($co, $_POST['input_naissance']);
	} else { echo 'Le date de naissance de l\'artiste est non définie';}
	if(isset($_POST['input_biographie'])){
		$bio = mysqli_real_escape_string($co,$_POST['input_biographie']);
	} else { echo 'La biographie est non definie';}


	$message = ''; 
	$emplacement = '';
	if (isset($_POST['btn_ajout_bio']) && $_POST['btn_ajout_bio'] == 'Ajouter')
	{
	  if (isset($_FILES['uploadedFile']) && $_FILES['uploadedFile']['error'] === UPLOAD_ERR_OK)
	  {
		// get details of the uploaded file
		$fileTmpPath = $_FILES['uploadedFile']['tmp_name'];
		$fileName = $_FILES['uploadedFile']['name'];
		$fileSize = $_FILES['uploadedFile']['size'];
		$fileType = $_FILES['uploadedFile']['type'];
		$fileNameCmps = explode(".", $fileName);
		$fileExtension = strtolower(end($fileNameCmps));
		$emplacement = "..\\\images\\\\".$fileName;	
	
		// sanitize file-name
		$newFileName = md5(time() . $fileName) . '.' . $fileExtension;
		$emplacement = "..\\\images\\\\".$newFileName;
	
		// check if file has one of the following extensions
		$allowedfileExtensions = array('jpg', 'gif', 'png','jpeg');
	
		if (in_array($fileExtension, $allowedfileExtensions))
		{
		  // directory in which the uploaded file will be moved
	
		  if(move_uploaded_file($fileTmpPath, $emplacement)) 
		  {
			$message ='File is successfully uploaded.';
		  }
		  else 
		  {
			$message = 'There was some error moving the file to upload directory. Please make sure the upload directory is writable by web server.';
		  }
		}
		else
		{
		  $message = 'Upload failed. Allowed file types: ' . implode(',', $allowedfileExtensions);
		}
	  }
	  else
	  {
		$message = 'There is some error in the file upload. Please check the following error.<br>';
		$message .= 'Error:' . $_FILES['uploadedFile']['error'];
	  }
	}
	
	if($categorie == "acteur"){
		
	$requete = "INSERT INTO Artiste(nomArtiste,prenomArtiste,naissance,photo_prof,biographie) VALUES('$nom','$prenom','$naissance','$emplacement','$bio')";
	mysqli_query($co, $requete) or die ("Exécution de la requête impossible ".mysqli_error($co));
    $numActeur = mysqli_insert_id($co);
 
	$rechercheNumFilm = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'") or die ("Exécution de la requête impossible ".mysqli_error($co));
	$numFilm = mysqli_fetch_array($rechercheNumFilm);
	//echo "Nom du film cliqué:". $nomFilm ."<br>Numero Film a lié:".$numFilm[0];
    
    $requete1 = "INSERT INTO Jouer(numArtiste,numFilm) VALUES('$numActeur','$numFilm[0]')";
	mysqli_query($co,$requete1) or die ("Exécution de la requête impossible ".mysqli_error($co));
	}

	else if($categorie == "realisateur"){
	$requete1 = "INSERT INTO Artiste(nomArtiste,prenomArtiste,naissance,photo_prof,biographie) VALUES('$nom','$prenom','$naissance','$emplacement','$bio')";
	mysqli_query($co, $requete1) or die ("Exécution de la requête impossible ".mysqli_error($co));
	$numRealisateur = mysqli_insert_id($co);
 
	$rechercheNumFilm = mysqli_query($co, "SELECT numFilm FROM Film WHERE nomFilm = '$nomFilm'") or die ("Exécution de la requête impossible ".mysqli_error($co));
	$numFilm = mysqli_fetch_array($rechercheNumFilm);
	//echo "Nom du film cliqué:". $nomFilm ."<br>Numero Film a lié:".$numFilm[0];
    
    $requete2 = "INSERT INTO Realiser(numArtiste,numFilm) VALUES('$numRealisateur','$numFilm[0]')";
	mysqli_query($co,$requete2) or die ("Exécution de la requête impossible ".mysqli_error($co));
	}
    

//header('Location: ..\vues\accueil.php');
	

	

?>