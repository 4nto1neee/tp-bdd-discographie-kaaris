-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 07 avr. 2024 à 15:17
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `albums`
--

CREATE TABLE `albums` (
  `idAlbum` int(100) NOT NULL,
  `NomAlbum` varchar(100) NOT NULL,
  `AnneeSortie` int(4) NOT NULL,
  `DescAlbum` text NOT NULL,
  `imgAlbum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`idAlbum`, `NomAlbum`, `AnneeSortie`, `DescAlbum`, `imgAlbum`) VALUES
(1, 'OR NOIR', 2013, 'Premier album de KAARIS, sorti le 21 octobre 2013.', 'ornoir.png'),
(2, 'OR NOIR part II', 2014, 'Deuxième album de Kaaris, suite de OR NOIR.', 'ornoir2.png'),
(3, 'Le bruit de mon âme', 2015, 'Troisième album de Kaaris', 'lebruitdemoname.png'),
(4, 'Double fuck', 2015, 'Quatrième album de Kaaris.', 'doublefuck.png'),
(5, 'Okou Gnakouri', 2016, 'Cinquième album de Kaaris.', 'okougnakouri.png'),
(6, 'Dozo', 2017, 'Sixième album de Kaaris.', 'dozo.png'),
(7, 'Or noir part 3', 2019, 'Septième album de Kaaris.', 'ornoir3.png'),
(8, '2.7.0', 2020, 'Huitième album de Kaaris.', '270.png'),
(9, '2.7.0 : Château Noir', 2021, 'Neuvième album de Kaaris.', '270chateaunoir.png'),
(10, 'SVR', 2022, 'Dixième album de Kaaris en featuring avec Kalash Criminel.', 'svr.png'),
(11, 'Day One', 2024, 'Onzième album de Kaaris.', 'dayone.png');

-- --------------------------------------------------------

--
-- Structure de la table `sons`
--

CREATE TABLE `sons` (
  `idAlbum` int(100) NOT NULL,
  `idSon` int(50) NOT NULL,
  `NomSon` varchar(255) NOT NULL,
  `Featuring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sons`
--

INSERT INTO `sons` (`idAlbum`, `idSon`, `NomSon`, `Featuring`) VALUES
(8, 12, '1er coeur', 'Maître Gims'),
(5, 6, '2 bigos', ''),
(1, 17, '2 Et Demi', ''),
(5, 11, '2.7 Zéro 10.17', 'Gucci Mane'),
(9, 7, '2363', ''),
(5, 13, '4Matic', 'Kalash Criminel'),
(1, 12, '63', ''),
(3, 4, '80 ZETREI', ''),
(2, 5, 'A L\'Heure', ''),
(2, 11, 'A La Barrière', ''),
(7, 23, 'After', ''),
(7, 7, 'Aieaieouille', ''),
(9, 5, 'Akrapovic', ''),
(10, 7, 'Angle mort', 'Kalash Criminel'),
(10, 8, 'Apocalypse', 'Kalash Criminel, Freeze Corleone'),
(4, 10, 'Audemard m\'a tue', ''),
(11, 6, 'Automatic', 'SCH'),
(10, 12, 'Balistique', 'Kalash Criminel'),
(10, 14, 'Barillet', 'Kalash Criminel'),
(10, 11, 'BBL', 'Kalash Criminel'),
(1, 13, 'Bébé', ''),
(11, 10, 'Benef', ''),
(5, 3, 'Benz', ''),
(8, 15, 'Big Riska', ''),
(1, 5, 'Binks', ''),
(1, 1, 'Bizon', ''),
(6, 15, 'Bling Bling', 'Kalash Criminel, Sofiane'),
(5, 2, 'Blow', ''),
(8, 13, 'Bope', ''),
(1, 7, 'Bouchon de Liège', ''),
(5, 4, 'Boyz N The Hood', ''),
(7, 3, 'Briganté', 'Mac Tyer, Sofiane'),
(4, 5, 'Briller', ''),
(4, 6, 'C\'est la base', 'XV Barbar'),
(10, 1, 'C\'est nous les O.G', 'Kalash Criminel'),
(7, 10, 'Ca on la', ''),
(11, 12, 'Celtics', ''),
(5, 15, 'Chaos', ''),
(2, 7, 'Chargé', ''),
(9, 3, 'Château noir', ''),
(7, 1, 'Chien de la casse', ''),
(7, 11, 'Cigarette', 'SCH'),
(1, 3, 'Ciroc', ''),
(3, 15, 'Comme Gucci Mane', ''),
(7, 15, 'Comme un refrain', ''),
(2, 4, 'Comment Je Fais', ''),
(5, 10, 'Contact', ''),
(6, 14, 'Courez', ''),
(3, 8, 'Crystal', 'Future'),
(4, 15, 'D.K', ''),
(11, 1, 'Dans la fusée', ''),
(7, 8, 'Débrouillard', ''),
(4, 3, 'Demarrage Hold Up', ''),
(1, 10, 'Dès Le Départ', ''),
(7, 9, 'Détails', ''),
(8, 6, 'Deux Deux', 'Bosh'),
(7, 13, 'Dévalisé', ''),
(6, 9, 'Diarabi', ''),
(7, 14, 'Douane', ''),
(4, 16, 'Double Fuck', ''),
(6, 1, 'Dozo', ''),
(3, 5, 'El Chapo', 'Lacrim'),
(9, 1, 'Équipage', ''),
(6, 12, 'Être deux', ''),
(7, 17, 'Exo-planète', ''),
(10, 4, 'Favela', ''),
(6, 3, 'Feghouli', ''),
(10, 15, 'Fiché S', 'Kalash Criminel'),
(4, 13, 'Finition', 'PSO Thug'),
(8, 20, 'Five O', 'Gazo'),
(3, 3, 'Four', ''),
(8, 18, 'Freestyle 2.7.0', ''),
(11, 16, 'Fuck la vie d\'avant', 'Kerchak'),
(7, 5, 'Golf7 r', ''),
(10, 9, 'Goudronné', 'Kalash Criminel'),
(8, 3, 'Goulag', ''),
(4, 11, 'Gringo', 'Bakyl'),
(11, 13, 'Gros salaire', ''),
(8, 11, 'Guedro', ''),
(7, 4, 'Gun Salute', ''),
(7, 21, 'Guzman', 'Da Uzi'),
(4, 9, 'H', ''),
(11, 5, 'Hé Bélébé', ''),
(8, 7, 'Illimité', ''),
(2, 1, 'Intro', ''),
(8, 19, 'IRM', 'Freeze Corleone'),
(5, 5, 'Jack Uzi', ''),
(1, 6, 'Je Bibi', ''),
(2, 10, 'Je Remplis L\'Sac', ''),
(6, 6, 'Jsuis gninnin, je suis bien', ''),
(5, 14, 'Jsuis perché', ''),
(2, 6, 'Juste', ''),
(3, 1, 'Kadirov', ''),
(6, 8, 'Kébra', ''),
(7, 20, 'Key less', ''),
(2, 9, 'Killé', ''),
(10, 10, 'King Von', 'Kalash Criminel'),
(1, 9, 'L.E.F', 'Booba'),
(3, 12, 'Le bruit de mon âme', ''),
(11, 8, 'Le prix de la réussite', ''),
(5, 1, 'Le Sang', ''),
(3, 18, 'Le temps', ''),
(10, 2, 'Les abymes', 'Kalash Criminel'),
(3, 13, 'Les oiseaux', ''),
(7, 6, 'Livraison', ''),
(8, 16, 'Lumière', 'Imen Es'),
(3, 10, 'Magnum', ''),
(8, 2, 'Mandalorian', ''),
(6, 2, 'Marchand d\'ivoir', ''),
(1, 4, 'MBM', ''),
(6, 4, 'Menace', ''),
(3, 14, 'Mentalité cailleras', ''),
(9, 10, 'Merci', ''),
(11, 9, 'Mirador', ''),
(11, 15, 'Mobalpa', ''),
(7, 2, 'Monsieur météo', ''),
(9, 4, 'Monte Carlo', ''),
(6, 5, 'Mood', ''),
(8, 9, 'Moula Moula', ''),
(5, 8, 'Nador', ''),
(8, 5, 'NRV', ''),
(7, 16, 'Octogone', ''),
(1, 15, 'Or Noir', ''),
(4, 12, 'Où sont les €', 'SCH, Worms-T'),
(6, 11, 'Oublier', ''),
(2, 8, 'Pablito', ''),
(11, 14, 'Panama', 'Hamza'),
(11, 2, 'Pangra', 'Koba LaD'),
(1, 8, 'Paradis Ou Enfer', ''),
(11, 11, 'Paro', ''),
(1, 11, 'Pas De Remède', ''),
(6, 7, 'Pas idée', ''),
(9, 11, 'Pégase', ''),
(4, 4, 'Petit velo', ''),
(8, 8, 'Piquée', 'Dadju'),
(7, 18, 'Plans', ''),
(1, 14, 'Plus Rien', ''),
(5, 9, 'Poussière', ''),
(4, 14, 'Recharge', ''),
(8, 17, 'Réussite', ''),
(9, 8, 'Rif', ''),
(9, 9, 'Rosé', ''),
(6, 13, 'RPG', ''),
(2, 3, 'S.E.V.R.A.N', ''),
(9, 6, 'SE', ''),
(3, 2, 'Se-vrak', ''),
(10, 6, 'Shooter', 'Kalash Criminel'),
(4, 1, 'Sinaloa', ''),
(3, 17, 'Situation', ''),
(2, 2, 'Sombre', ''),
(8, 4, 'Sosa', ''),
(10, 5, 'Sur le banc', 'Kalash Criminel'),
(5, 12, 'T\'étais où', ''),
(4, 7, 'Talsadoum', ''),
(7, 19, 'Tauro', ''),
(10, 4, 'Tchalla', 'Kalash Criminel'),
(5, 7, 'Tchoin', ''),
(4, 2, 'Terrain', ''),
(11, 17, 'Tête brûlée', ''),
(4, 8, 'Tieks', ''),
(9, 2, 'Top', ''),
(10, 13, 'Tous les jours', 'Kalash Criminel'),
(8, 10, 'Tout est prêt', 'Sid les 3 Éléments'),
(7, 12, 'Tout était écrit', ''),
(3, 7, 'Trap', ''),
(3, 9, 'Tripoli', ''),
(10, 3, 'Tu dois des sous', 'Kalash Criminel'),
(1, 16, 'Tu Me Connais', ''),
(11, 3, 'Tu parles un peu trop', ''),
(8, 1, 'Ultra', ''),
(8, 14, 'Valhalla', ''),
(6, 10, 'Végéta', ''),
(6, 16, 'Victoire', ''),
(3, 11, 'Vie sauvage', '13 Block'),
(3, 16, 'Voyageur', ''),
(11, 7, 'WAR', ''),
(3, 6, 'Zone De Transit', ''),
(1, 2, 'Zoo', ''),
(7, 22, 'Zumba noir', 'Lartiste');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Index pour la table `sons`
--
ALTER TABLE `sons`
  ADD PRIMARY KEY (`NomSon`),
  ADD KEY `idAlbum` (`idAlbum`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `albums`
--
ALTER TABLE `albums`
  MODIFY `idAlbum` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sons`
--
ALTER TABLE `sons`
  ADD CONSTRAINT `idAlbum` FOREIGN KEY (`idAlbum`) REFERENCES `albums` (`idAlbum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
