-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 11 Septembre 2016 à 15:30
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `remise_niveau_info`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `num_etu` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  PRIMARY KEY (`num_etu`(7))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`num_etu`, `nom`, `prenom`) VALUES
('id06381', 'nom06381', 'pre06381'),
('id08669', 'nom08669', 'pre08669'),
('id08026', 'nom08026', 'pre08026');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `id_niveau` text NOT NULL,
  `nom_niveau` text NOT NULL,
  `nb_cours` int(11) NOT NULL,
  PRIMARY KEY (`id_niveau`(8))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `peut_suivre`
--

DROP TABLE IF EXISTS `peut_suivre`;
CREATE TABLE IF NOT EXISTS `peut_suivre` (
  `num_etu` text NOT NULL,
  `id_niveau` text NOT NULL,
  `date_autorisation` date NOT NULL,
  PRIMARY KEY (`num_etu`(7),`id_niveau`(8))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
