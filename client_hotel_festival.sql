-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 26 oct. 2017 à 12:08
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `client_hotel_festival`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `Identifiant_client` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` text,
  `Prenom` text,
  `Email` text,
  `Numero_telephone` text,
  `Date_naissance` date DEFAULT NULL,
  `Pays` text,
  `Langue` text,
  `Recontactable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Identifiant_client`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Structure de la table `sejour`
--

DROP TABLE IF EXISTS `sejour`;
CREATE TABLE IF NOT EXISTS `sejour` (
  `Identifiant_sejour` int(11) NOT NULL AUTO_INCREMENT,
  `Identifiant_client` int(11) NOT NULL,
  `Date_arrivee` date NOT NULL,
  `Date_depart` date NOT NULL,
  `Nature` text,
  `Nom_societe` text,
  `Methode_reservation` text,
  PRIMARY KEY (`Identifiant_sejour`),
  KEY `FK_Sejour_Identifiant_client` (`Identifiant_client`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sejour`
--
ALTER TABLE `sejour`
  ADD CONSTRAINT `FK_Sejour_Identifiant_client` FOREIGN KEY (`Identifiant_client`) REFERENCES `client` (`Identifiant_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
