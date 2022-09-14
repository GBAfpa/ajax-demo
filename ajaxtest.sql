-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 14 sep. 2022 à 13:23
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ajaxtest`
--

-- --------------------------------------------------------

--
-- Structure de la table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id_task` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task` varchar(255) NOT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `task`
--

INSERT INTO `task` (`id_task`, `task`) VALUES
(1, 'Passer l\'aspi'),
(2, 'coucou'),
(3, 'adad'),
(4, 'adadrer\'t\"\"\''),
(5, 'rtetet'),
(6, 'coucou'),
(7, 'Faire le CSS'),
(8, 'Faire le CSS en mieux'),
(9, 'azeaze'),
(10, 'Faire le JS en plus propre'),
(11, 'ozjeazea'),
(12, 'ozezeze'),
(13, 'ozezeze er zer ze'),
(14, 'une dernière tache'),
(15, 'azeazeze'),
(16, 'ezazeaze'),
(17, 'azeazeeazeaze'),
(18, 'azeazeeazeaze');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
