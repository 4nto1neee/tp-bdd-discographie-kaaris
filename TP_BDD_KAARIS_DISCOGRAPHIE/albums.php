<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="utf-8">
		<title>TP-BDD | KAARIS | albums </title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<link rel="icon" href="img/test.png" type="x-icon"/> <!-- test -->
	</head>
	
	<body>
		<center><h1>La discographie de KAARIS</h1></center>
		<?php
			try {
				/*connexion à la bdd via le fichier connexion.php*/
				include 'connexion.php';	
				/* préparation de la requête qui qui permettra d'afficher les albums*/ 
				$requete = $pdo->prepare("SELECT * FROM albums");
				/* Exécution*/
				$requete->execute();
				/*Récupération de l'enregistrement*/
				$album = $requete->fetchall(PDO::FETCH_ASSOC);
				/* récupération des champs de la bdd*/
				foreach($album as $unalbum){
					$nom = $unalbum['NomAlbum'];
					$annee = $unalbum['AnneeSortie'];
					$id = $unalbum['idAlbum'];
					$cover = $unalbum['imgAlbum'];
				/*passage de l'id de l'album dans l'url pour s'en servir sur la page détails */
					$url = "http://localhost/tp_bdd/detail_album.php?id=".$id;
				/*affichage des champs séléctionnés dans la bdd en tant qu'éléments d'une liste html*/
					echo"<center>";
					echo"<li class='al'>";
					echo "
						<a href=$url>
							<img src=img/albums/$cover />
						</a>
						<div class='desca'>
							<a href=$url>
								".$nom."
							</a> -
								".$annee."
						</div>
					";
					echo"</li></center><br>";
				}
			}
			catch (PDOException $e){
			print "Erreur !: " . $e->getMessage() . "<br/>";
			die(); }		
		?>
	<!-- bas de page incluant un lien de retour à la page d'accueil du site et l'auteur du site -->
		<div class="bottom"> 
		<center>
			<a class="retour" href="index.php">retour à l'accueil</a> <!-- lien vers la page d'accueil -->
			<p class="copyr"><a href="https://github.com/4nto1neee" target="_blank" >@4nto1neee</a> - 2024</p>
		</center>
		</div>
	</body>
</html>