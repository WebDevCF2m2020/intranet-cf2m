-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 16 mars 2021 à 10:14
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `intranetv7`
--
CREATE DATABASE IF NOT EXISTS `intranetv7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `intranetv7`;

-- --------------------------------------------------------

--
-- Structure de la table `lafiliere`
--

DROP TABLE IF EXISTS `lafiliere`;
CREATE TABLE IF NOT EXISTS `lafiliere` (
  `idlafiliere` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenom` varchar(45) NOT NULL,
  `lacronyme` varchar(10) NOT NULL,
  `lacouleur` varchar(10) DEFAULT NULL,
  `lepicto` varchar(45) DEFAULT NULL,
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idlafiliere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lapresence`
--

DROP TABLE IF EXISTS `lapresence`;
CREATE TABLE IF NOT EXISTS `lapresence` (
  `idlapresence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ampm` tinyint(1) UNSIGNED NOT NULL COMMENT '0 => matin\n1 => après midi',
  `ladate` date NOT NULL,
  `heuredebut` time NOT NULL,
  `heurefin` time NOT NULL,
  `lecode_idlecode` tinyint(3) UNSIGNED NOT NULL,
  `linscription_idlinscription` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlapresence`),
  KEY `fk_lapresence_linscription1_idx` (`linscription_idlinscription`),
  KEY `lecode_idlecode` (`lecode_idlecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lasession`
--

DROP TABLE IF EXISTS `lasession`;
CREATE TABLE IF NOT EXISTS `lasession` (
  `idlasession` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenom` varchar(45) NOT NULL,
  `lacronyme` varchar(16) NOT NULL,
  `lenumero` tinyint(1) DEFAULT NULL,
  `letype` tinyint(1) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `lafiliere_idlafiliere` tinyint(3) UNSIGNED NOT NULL,
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idlasession`),
  KEY `fk_session_filiere1_idx` (`lafiliere_idlafiliere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lasession_has_leconge`
--

DROP TABLE IF EXISTS `lasession_has_leconge`;
CREATE TABLE IF NOT EXISTS `lasession_has_leconge` (
  `lasession_idlasession` int(10) UNSIGNED NOT NULL,
  `leconge_idleconge` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`lasession_idlasession`,`leconge_idleconge`),
  KEY `fk_lasession_has_leconge_leconge1_idx` (`leconge_idleconge`),
  KEY `fk_lasession_has_leconge_lasession1_idx` (`lasession_idlasession`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lecode`
--

DROP TABLE IF EXISTS `lecode`;
CREATE TABLE IF NOT EXISTS `lecode` (
  `idlecode` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(5) NOT NULL,
  `ladescription` varchar(45) NOT NULL,
  PRIMARY KEY (`idlecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `leconge`
--

DROP TABLE IF EXISTS `leconge`;
CREATE TABLE IF NOT EXISTS `leconge` (
  `idleconge` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lejour` date NOT NULL COMMENT 'jour du congé',
  `laperiode` tinyint(1) NOT NULL COMMENT '0 = matin, 1 = après-midi, 2 = toute la journée',
  PRIMARY KEY (`idleconge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ledroit`
--

DROP TABLE IF EXISTS `ledroit`;
CREATE TABLE IF NOT EXISTS `ledroit` (
  `idledroit` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(60) NOT NULL,
  `ladescription` varchar(300) DEFAULT NULL,
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idledroit`),
  UNIQUE KEY `theintitule_UNIQUE` (`lintitule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lerole`
--

DROP TABLE IF EXISTS `lerole`;
CREATE TABLE IF NOT EXISTS `lerole` (
  `idlerole` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(60) NOT NULL,
  `ladescription` varchar(300) DEFAULT NULL,
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idlerole`),
  UNIQUE KEY `intitule_UNIQUE` (`lintitule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lerole_has_ledroit`
--

DROP TABLE IF EXISTS `lerole_has_ledroit`;
CREATE TABLE IF NOT EXISTS `lerole_has_ledroit` (
  `lerole_idlerole` smallint(5) UNSIGNED NOT NULL,
  `ledroit_idledroit` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`lerole_idlerole`,`ledroit_idledroit`),
  KEY `fk_lerole_has_ledroit_ledroit1_idx` (`ledroit_idledroit`),
  KEY `fk_lerole_has_ledroit_lerole1_idx` (`lerole_idlerole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lesuivi`
--

DROP TABLE IF EXISTS `lesuivi`;
CREATE TABLE IF NOT EXISTS `lesuivi` (
  `idlesuivi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ladate` date NOT NULL,
  `ponctualite` varchar(512) NOT NULL,
  `evolution` varchar(512) NOT NULL,
  `tests` varchar(512) NOT NULL,
  `attitude` varchar(512) NOT NULL,
  `linscription_idlinscription` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlesuivi`),
  KEY `fk_lesuivi_linscription1_idx` (`linscription_idlinscription`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `linscription`
--

DROP TABLE IF EXISTS `linscription`;
CREATE TABLE IF NOT EXISTS `linscription` (
  `idlinscription` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `lutilisateur_idlutilisateur` mediumint(8) UNSIGNED NOT NULL,
  `lasession_idlasession` int(10) UNSIGNED NOT NULL,
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idlinscription`),
  KEY `fk_inscription_utilisateur1_idx` (`lutilisateur_idlutilisateur`),
  KEY `fk_inscription_session1_idx` (`lasession_idlasession`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lutilisateur`
--

DROP TABLE IF EXISTS `lutilisateur`;
CREATE TABLE IF NOT EXISTS `lutilisateur` (
  `idlutilisateur` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenomutilisateur` varchar(80) NOT NULL,
  `lemotdepasse` varchar(255) NOT NULL COMMENT 'crypt with password_hash - PASSWORD_DEFAULT ',
  `lenom` varchar(45) NOT NULL,
  `leprenom` varchar(45) NOT NULL,
  `lemail` varchar(180) NOT NULL,
  `luniqueid` char(26) NOT NULL COMMENT 'create with uniqid(key,true) string(26)',
  `actif` tinyint(3) UNSIGNED DEFAULT 1,
  PRIMARY KEY (`idlutilisateur`),
  UNIQUE KEY `lenomutilisateur_UNIQUE` (`lenomutilisateur`),
  UNIQUE KEY `lemail_UNIQUE` (`lemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `lutilisateur_has_lerole`
--

DROP TABLE IF EXISTS `lutilisateur_has_lerole`;
CREATE TABLE IF NOT EXISTS `lutilisateur_has_lerole` (
  `lutilisateur_idlutilisateur` mediumint(8) UNSIGNED NOT NULL,
  `lerole_idlerole` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`lutilisateur_idlutilisateur`,`lerole_idlerole`),
  KEY `fk_utilisateur_has_lerole_lerole1_idx` (`lerole_idlerole`),
  KEY `fk_utilisateur_has_lerole_utilisateur_idx` (`lutilisateur_idlutilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lapresence`
--
ALTER TABLE `lapresence`
  ADD CONSTRAINT `fk_lapresence_linscription1` FOREIGN KEY (`linscription_idlinscription`) REFERENCES `linscription` (`idlinscription`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `lapresence_ibfk_1` FOREIGN KEY (`lecode_idlecode`) REFERENCES `lecode` (`idlecode`);

--
-- Contraintes pour la table `lasession`
--
ALTER TABLE `lasession`
  ADD CONSTRAINT `fk_session_filiere1` FOREIGN KEY (`lafiliere_idlafiliere`) REFERENCES `lafiliere` (`idlafiliere`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lasession_has_leconge`
--
ALTER TABLE `lasession_has_leconge`
  ADD CONSTRAINT `fk_lasession_has_leconge_lasession1` FOREIGN KEY (`lasession_idlasession`) REFERENCES `lasession` (`idlasession`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lasession_has_leconge_leconge1` FOREIGN KEY (`leconge_idleconge`) REFERENCES `leconge` (`idleconge`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lerole_has_ledroit`
--
ALTER TABLE `lerole_has_ledroit`
  ADD CONSTRAINT `fk_lerole_has_ledroit_ledroit1` FOREIGN KEY (`ledroit_idledroit`) REFERENCES `ledroit` (`idledroit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lerole_has_ledroit_lerole1` FOREIGN KEY (`lerole_idlerole`) REFERENCES `lerole` (`idlerole`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lesuivi`
--
ALTER TABLE `lesuivi`
  ADD CONSTRAINT `fk_lesuivi_linscription1` FOREIGN KEY (`linscription_idlinscription`) REFERENCES `linscription` (`idlinscription`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `linscription`
--
ALTER TABLE `linscription`
  ADD CONSTRAINT `fk_inscription_session1` FOREIGN KEY (`lasession_idlasession`) REFERENCES `lasession` (`idlasession`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscription_utilisateur1` FOREIGN KEY (`lutilisateur_idlutilisateur`) REFERENCES `lutilisateur` (`idlutilisateur`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `lutilisateur_has_lerole`
--
ALTER TABLE `lutilisateur_has_lerole`
  ADD CONSTRAINT `fk_utilisateur_has_lerole_lerole1` FOREIGN KEY (`lerole_idlerole`) REFERENCES `lerole` (`idlerole`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_utilisateur_has_lerole_utilisateur` FOREIGN KEY (`lutilisateur_idlutilisateur`) REFERENCES `lutilisateur` (`idlutilisateur`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
