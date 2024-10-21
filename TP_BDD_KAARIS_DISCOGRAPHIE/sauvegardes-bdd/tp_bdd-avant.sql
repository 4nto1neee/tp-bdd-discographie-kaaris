-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 02 avr. 2024 à 17:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

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
  `DescAlbum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `albums`
--

INSERT INTO `albums` (`idAlbum`, `NomAlbum`, `AnneeSortie`, `DescAlbum`) VALUES
(1, 'OR NOIR', 2013, 'Premier album de KAARIS, sorti le 21 octobre 2013.'),
(2, 'OR NOIR part II', 2014, 'Deuxième album de Kaaris, suite de OR NOIR.'),
(3, 'Le bruit de mon âme', 2015, 'Troisième album de Kaaris'),
(4, 'Double fuck', 2015, 'Quatrième album de Kaaris.'),
(5, 'Okou Gnakouri', 2016, 'Cinquième album de Kaaris.'),
(6, 'Dozo', 2017, 'Sixième album de Kaaris.'),
(7, 'Or noir 3', 2019, 'Septième album de Kaaris.'),
(8, '2.7.0', 2020, 'Huitième album de Kaaris.'),
(9, '2.7.0 : Château Noir', 2021, 'Neuvième album de Kaaris.'),
(10, 'SVR', 2022, 'Dixième album de Kaaris en featuring avec Kalash Criminel.'),
(11, 'Day One', 2024, 'Onzième album de Kaaris.');

-- --------------------------------------------------------

--
-- Structure de la table `sons`
--

CREATE TABLE `sons` (
  `idAlbum` int(100) NOT NULL,
  `idSon` int(50) NOT NULL,
  `NomSon` varchar(255) NOT NULL,
  `Featuring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sons`
--

INSERT INTO `sons` (`idAlbum`, `idSon`, `NomSon`, `Featuring`) VALUES
(1, 1, 'Bizon', ''),
(1, 2, 'Zoo', ''),
(1, 3, 'Ciroc', ''),
(1, 4, 'MBM', ''),
(1, 5, 'Binks', ''),
(1, 9, 'L.E.F', 'Booba');

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
  ADD PRIMARY KEY (`idSon`),
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
