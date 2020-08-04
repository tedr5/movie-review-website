<?php
	require_once("..\modeles\bd.php");
	$connect = new bd("client", "client");
	$co = $connect->connexion() or die("Erreur de connexion à la base de données");
	session_start();
	
	if(isset($_POST['input_nomFilm']) ){
		$nomFilm = mysqli_real_escape_string($co, $_POST['input_nomFilm']);
	} else { echo 'Le nom du film est non défini';}
	if( isset( $_POST['input_ba'])){
		$ba = $_POST['input_ba'];
	} else { echo 'Le lien de la bande annonce est non définie';}
	if(isset($_POST['input_resume'])){
		$resume = mysqli_real_escape_string($co, $_POST['input_resume']);
	} else { echo 'Le résumé du film est non défini';}
	if(isset($_POST['input_annee'])){
		$annee = $_POST['input_annee'];
	} else { echo 'L\'\annee est non définie';}
	if(isset($_POST['input_ageRestrict'])){
		$ageRestrict = $_POST['input_ageRestrict'];
	} else { echo 'La restriction d\'\âge est non définie';}
	if(isset($_POST['input_langue'])){
		$langue = $_POST['input_langue'];
	} else { echo 'La langue du film est non définie';}
	if(isset($_POST['input_duree'])){
		$duree = $_POST['input_duree'];
	} else { echo 'La durée du film est non définie';}
	if(isset($_POST['input_critique'])){
		$critique = mysqli_real_escape_string($co, $_POST['input_critique']);
	} else { echo 'La critique du film est non définie';}
	
	$message = ''; 
	if (isset($_POST['btn_ajout_film']) && $_POST['btn_ajout_film'] == 'Ajouter')
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
	
		$newFileName = md5(time() . $fileName) . '.' . $fileExtension;
		$emplacement = "..\\\images\\\\".$newFileName;
	
		$allowedfileExtensions = array('jpg', 'gif', 'png','jpeg');
	
		if (in_array($fileExtension, $allowedfileExtensions))
		{	
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

	$login = $_SESSION['input_login'];
	$rechnumU = mysqli_query($co, "SELECT numUtilisateur FROM Utilisateur WHERE login = '$login'");
	$numU = mysqli_fetch_array($rechnumU);

    
	$requete = "INSERT INTO Film(nomFilm,resume,annee,age_restric,critique,note_moy,photo_affiche,lien_ba,langue,duree, numUtilisateur) 
	VALUES('$nomFilm','$resume','$annee','$ageRestrict','$critique',null,'$emplacement','$ba','$langue','$duree', '$numU[0]')";
    mysqli_query($co,$requete) or die ("Exécution de la requête impossible ");


header('Location: ..\vues\accueil.php');
	

	

?>