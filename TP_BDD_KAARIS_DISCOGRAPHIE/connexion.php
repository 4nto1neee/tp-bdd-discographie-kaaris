<?php
	
	try {
            // Instanciation de la classe PDO. 
            // La documentation nous renseigne sur les 3 arguments à passer au constructeur : le DSN, l'utilisateur et le mot de passe
            $pdo = new PDO('mysql:host=localhost;dbname=tp_bdd', 'root', '');
            $pdo->exec("SET CHARACTER SET utf8");
        } catch (PDOException $e) {
	print "Erreur !: " . $e->getMessage() . "<br/>";
	die();
	}
?>