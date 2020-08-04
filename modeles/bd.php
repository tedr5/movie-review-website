<?php  
	class bd {
		private $host;
		private $user;
		private $passwd;
		private $bdd;
		
		public function __construct($user, $passwd) {
			$this->host = "127.0.0.1";
			$this->user = $user;
			$this->passwd = $passwd;
			$this->bdd = "critique_film";
		}

		public function connexion() {
			$co = mysqli_connect($this->host, $this->user, $this->passwd, $this->bdd) or die("Erreur de connexion");
			//echo "Connexion Réussie";
			return $co;
		}

		public function deconnexion($co) {
			mysqli_close($co);
			echo "Connexion Fermée";
		}
	}
?>
