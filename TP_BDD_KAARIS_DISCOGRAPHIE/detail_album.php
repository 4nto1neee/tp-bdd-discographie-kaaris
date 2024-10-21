<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>TP-BDD | KAARIS | details album </title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/test.png" type="x-icon"/> <!-- test -->
	</head>
	
	<body>
		<?php /* affichage des détails de l'album et des différents morceaux*/
			$ide = $_GET['id'];
			try {
				/*connexion à la bdd via connexion.php*/
				include 'connexion.php';	
				/* préparation de la requête pour afficher le nom de l'album en haut de page*/ 
				$requete = $pdo->prepare("SELECT NomAlbum FROM albums WHERE idAlbum = ".$ide);
				/* Exécution*/
				$requete->execute();
				/*Récupération de l'enregistrement*/
				$album = $requete->fetch(PDO::FETCH_ASSOC); 
				/* récupération des champs de la bdd*/
					$nom=$album['NomAlbum'];
					echo "<center><h1>".$nom."</h1></center><br>"; /* affichage du nom de l'album en haut de la page*/
				
				/*préparation de la requête pour afficher les sons de l'album et leur détail en les classant par leur idson qui correspond à leur place dans l'album*/
				$requete = $pdo->prepare("SELECT NomSon, idSon, Featuring FROM sons WHERE idAlbum = $ide GROUP BY idSon ORDER BY idSon ASC");
				/* Exécution*/
				$requete->execute();
				/*Récupération de l'enregistrement*/
				$sons = $requete->fetchall(PDO::FETCH_ASSOC); 
				/* récupération des champs de la bdd*/
					foreach($sons as $unson){
					$nom=$unson['NomSon'];
					$num=$unson['idSon'];
					$feat=$unson['Featuring'];
				/*affichage des champs sélectionnés*/
					echo "<center>
						<li class='ss'>
							<p>".$num." - ".$nom."
								<br>".$feat."
							</p>
						</li>
						</center>
						<br>";
					}
				}
			catch (PDOException $e){
			print "Erreur !: " . $e->getMessage() . "<br/>";
			die(); }
		?>
		<!-- bas de page incluant un lien de retour à la page discographie et l'auteur du site -->
		<div class="bottom"> 
		<center>
			<a class="retour" href="albums.php">retour à la discographie</a>
			<p class="copyr"><a href="https://github.com/4nto1neee" target="_blank" >@4nto1neee</a> - 2024</p>
		</center>
		</div>
	</body>
</html>