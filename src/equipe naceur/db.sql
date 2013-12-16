-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 16 Décembre 2013 à 20:44
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `grisou`
--
CREATE DATABASE IF NOT EXISTS `grisou` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grisou`;

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `pageId` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  PRIMARY KEY (`pageId`),
  KEY `titre` (`titre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`pageId`, `titre`) VALUES
(573589, 'Talk:53 (number)'),
(573606, 'Talk:71 (number)'),
(7333557, 'Talk:Baryon asymmetry'),
(1231654, 'Talk:Biological immortality'),
(179285, 'Talk:Chaitin''s constant'),
(1602816, 'Talk:Chinook wind'),
(1593058, 'Talk:Chip''s Challenge'),
(32723494, 'Talk:Chirality'),
(613352, 'Talk:Congenital insensitivity to pain'),
(2160530, 'Talk:Coriolis effect'),
(7431082, 'Talk:Coriolis field'),
(4280500, 'Talk:Daniel Tammet'),
(1262196, 'Talk:Dimensionless physical constant'),
(2660915, 'Talk:Eisenstein prime'),
(2112952, 'Talk:English draughts'),
(4421233, 'Talk:Equatorial bulge'),
(173520, 'Talk:Fermat number'),
(1444197, 'Talk:Fictitious force'),
(13266968, 'Talk:Flash of unstyled content'),
(10395276, 'Talk:Hardness'),
(226337, 'Talk:Hexagon'),
(19300685, 'Talk:Integer factorization records'),
(15882, 'Talk:Java (programming language)'),
(10299, 'Talk:JavaScript'),
(445763, 'Talk:List of computer viruses'),
(442676, 'Talk:List of prime numbers'),
(19618, 'Talk:Mersenne prime'),
(307380, 'Talk:Montreal Metro'),
(2965979, 'Talk:Philosophy of artificial intelligence'),
(1560398, 'Talk:Primality test'),
(449473, 'Talk:Proof of Bertrand''s postulate'),
(2874965, 'Talk:Shear modulus'),
(1373743, 'Talk:Sinc function'),
(91442, 'Talk:Snake'),
(13186692, 'Talk:Square root of 3'),
(1727223, 'Talk:Superfluid helium-4'),
(51433, 'Talk:Surreal number'),
(247072, 'Talk:Taylor series'),
(1580577, 'Talk:Terminal velocity'),
(24799601, 'Talk:Tetradecimal'),
(4657951, 'Talk:Tool-assisted speedrun'),
(9225020, 'Talk:Turritopsis dohrnii'),
(40857491, 'Talk:Turritopsis nutricula'),
(2642344, 'Talk:Twin prime'),
(9125189, 'Talk:Wieferich prime'),
(1012022, 'Talk:Zombie (computer science)');

-- --------------------------------------------------------

--
-- Structure de la table `talk`
--

CREATE TABLE IF NOT EXISTS `talk` (
  `pageId` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `ordre` int(11) NOT NULL DEFAULT '0',
  `niveau` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  PRIMARY KEY (`pageId`,`comment`,`ordre`,`user`),
  KEY `ordre` (`ordre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `talk`
--

INSERT INTO `talk` (`pageId`, `comment`, `ordre`, `niveau`, `user`) VALUES
(10299, 'Important information missing', 0, 0, 'Blackbombchu'),
(10299, 'Important information missing', 1, 1, 'Blackbombchu'),
(10299, 'Important information missing', 2, 2, 'Golbez'),
(19618, 'Dead link', 0, 0, 'Blackbombchu'),
(19618, 'Dead link', 1, 1, 'PrimeHunter'),
(19618, 'Dead link', 2, 2, 'PrimeHunter'),
(91442, 'Snakes had legs?', 0, 0, '71.161.252.56'),
(91442, 'Snakes had legs?', 1, 1, 'HCA'),
(91442, 'Snakes had legs?', 2, 2, 'Blackbombchu'),
(179285, 'Calculation of the Chaitin constant...?', 0, 0, 'Blackbombchu'),
(179285, 'Calculation of the Chaitin constant...?', 1, 0, '192.88.124.204'),
(179285, 'Calculation of the Chaitin constant...?', 2, 0, '76.99.236.216'),
(179285, 'Calculation of the Chaitin constant...?', 3, 0, 'Tlepp'),
(179285, 'Possible unproven statement in the article', 0, 0, 'Blackbombchu'),
(226337, 'Imperfect image.', 0, 0, 'Blackbombchu'),
(226337, 'Imperfect image.', 1, 0, 'Tomruen'),
(226337, 'Imperfect image.', 2, 0, 'Blackbombchu'),
(226337, 'Imperfect image.', 3, 1, 'Tomruen'),
(226337, 'Imperfect image.', 4, 0, 'Blackbombchu'),
(226337, 'Imperfect image.', 5, 1, 'Tomruen'),
(247072, 'Much better looking way to write all those mathema', 0, 0, 'Blackbombchu'),
(247072, 'Much better looking way to write all those mathema', 1, 1, 'Su0142awomir Biau0142y'),
(247072, 'Much better looking way to write all those mathema', 2, 2, 'Blackbombchu'),
(247072, 'Much better looking way to write all those mathema', 3, 3, 'Su0142awomir Biau0142y'),
(247072, 'Much better looking way to write all those mathema', 4, 1, '150.203.160.15'),
(247072, 'Much better looking way to write all those mathema', 5, 2, 'Blackbombchu'),
(247072, 'Much better looking way to write all those mathema', 6, 3, 'Su0142awomir Biau0142y'),
(247072, 'Very unclear section', 0, 0, 'Blackbombchu'),
(247072, 'Very unclear section', 1, 1, 'Su0142awomir Biau0142y'),
(449473, 'Great big hole in proof', 0, 0, 'Blackbombchu'),
(449473, 'Great big hole in proof', 1, 1, 'David Eppstein'),
(1231654, 'Incorrect link to another article.', 0, 0, 'Blackbombchu'),
(1231654, 'Incorrect link to another article.', 1, 1, 'Blackbombchu'),
(1231654, 'Newly discovered immortal creature', 0, 0, 'Blackbombchu'),
(1262196, 'Problem with dimensionless constants.', 0, 0, 'Blackbombchu'),
(1262196, 'Problem with dimensionless constants.', 1, 1, 'ComaVN'),
(1373743, 'Extra property to add to the Properties section', 0, 0, 'Blackbombchu'),
(1373743, 'Extra property to add to the Properties section', 1, 1, 'Dicklyon'),
(1373743, 'Extra property to add to the Properties section', 2, 2, 'Blackbombchu'),
(1373743, 'Extra property to add to the Properties section', 3, 3, 'Dicklyon'),
(1373743, 'Extra property to add to the Properties section', 4, 1, 'LutzL'),
(1373743, 'Incorrect definition of the Sinc function', 0, 0, 'Blackbombchu'),
(1580577, 'Mistake in creeping flow formula.', 0, 0, 'Blackbombchu'),
(1727223, 'infinite thermal conductance.', 0, 0, '68.48.169.133'),
(1727223, 'infinite thermal conductance.', 1, 1, 'Blackbombchu'),
(2642344, 'Insufficient information in History section', 0, 0, 'Blackbombchu'),
(2642344, 'Insufficient information in History section', 1, 1, 'Blackbombchu'),
(4280500, 'Stating something as a fact without proof', 0, 0, 'Blackbombchu'),
(4280500, 'Stating something as a fact without proof', 1, 1, '97.87.60.8'),
(9225020, 'Abbreviation', 0, 0, 'Blackbombchu'),
(24799601, 'Notability', 0, 0, 'Noe'),
(24799601, 'Notability', 1, 1, '67.174.137.121');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`),
  KEY `userName_2` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`userId`, `userName`) VALUES
(18922183, 'Blackbombchu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
