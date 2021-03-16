-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 16 mars 2021 à 10:15
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

--
-- Déchargement des données de la table `lafiliere`
--

INSERT INTO `lafiliere` (`idlafiliere`, `lenom`, `lacronyme`, `lacouleur`, `lepicto`, `actif`) VALUES
(1, 'Web Developer', 'WEB', '#3c0497', '2019103111433060294.jpg', 1),
(2, 'Animateur Multimédia', 'AMM', '#e34085', '2019102314044192963.jpg', 1),
(3, 'PAO', 'PAO', '#fad345', '2019102314051329116.jpg', 0),
(4, 'Technicien Support PC Réseaux', 'TSPCR', '#55d0ea', '2019102411311536223.png', 1),
(5, 'Aventure Digitale', 'AD', '#68d781', '2019102511582936646.jpg', 1),
(6, 'Atouts Jeunes', 'AJ', '#73abcc', '2019102811292697399.jpg', 1),
(7, 'Digital Designer', 'DD', '#55fd42', '2019102812031270776.png', 1),
(8, 'Aide-Comptable', 'AC', NULL, NULL, 0);

--
-- Déchargement des données de la table `lasession`
--

INSERT INTO `lasession` (`idlasession`, `lenom`, `lacronyme`, `lenumero`, `letype`, `debut`, `fin`, `lafiliere_idlafiliere`, `actif`) VALUES
(1, 'Web Développeur 2019', 'WEB2019', 1, 2, '2019-01-07', '2019-11-08', 1, 1),
(2, 'Animateur Multimédia 2019', 'AMM2019', 1, 2, '2019-02-04', '2019-12-20', 2, 1),
(3, 'PAO 2019', 'PAO2019', 1, 1, '2019-10-30', '2019-12-25', 3, 1),
(4, 'Aide-Comptable 2019', 'AC2019', 1, 1, '2019-10-21', '2019-12-20', 8, 0),
(5, 'Atouts Jeunes 2019 - session 1', 'AJ2019-1', 2, 3, '2019-04-15', '2019-06-14', 6, 0),
(6, 'Atouts Jeunes 2019 - session 2', 'AJ2019-2', 2, 3, '2019-10-29', '2020-02-06', 6, 0),
(7, 'Préformation Web Développeur 2019', 'PREFOWEB2019', 1, 2, '2018-11-15', '2018-12-21', 1, 0),
(8, 'Réseaux 2019', 'TSPCR2019', 1, 1, '2019-10-15', '2019-10-27', 4, 1),
(9, 'Aventure Digitale 2019 - session 1', 'AD2019-1', 1, 3, '2019-10-29', '2020-02-06', 5, 0),
(10, 'Aventure Digitale 2019 - session 2', 'AD2019-2', 2, 3, '2019-10-21', '2019-12-20', 5, 1),
(11, 'Aventure Digitale 2020 - session 1', 'AD2020-1', 1, 3, '2020-03-02', '2020-05-15', 5, 1),
(12, 'Atouts Jeunes 2020 - session 1', 'AJ2020-1', 1, 3, '2020-03-23', '2020-06-12', 6, 0),
(15, 'Préformation WEB Développeur 2020', 'PREFOWEB2020', NULL, 2, '2020-01-06', '2020-02-14', 1, 1);

--
-- Déchargement des données de la table `lutilisateur`
--

INSERT INTO `lutilisateur` (`idlutilisateur`, `lenomutilisateur`, `lemotdepasse`, `lenom`, `leprenom`, `lemail`, `luniqueid`, `actif`) VALUES
(1, 'sylviane.mol', '$2y$10$INbdexessFV77JvfdT6UZOfhGhTiLPig5LklRzBE8FYYl/JJ/OGcO', 'Mol', 'Sylviane', 'sylviane.mol@cf2m.be', 'zer§rty', 1),
(2, 'pierre.sandron', '$2y$10$6UP1Ay5XP22TfgdW5mtuF..FpPiqn0V3U1R2AGv3W4JxveudUkOTS', 'Sandron', 'Pierre', 'pierre.sandron@cf2m.be', 'key0123456789', 1),
(9, 'oumar.abakar', '$2y$10$Uy5JcTI0Umd8g6yKdz03NujB.c8XAXvYOxUxiKpxmt1SqjAc.6wyC', 'Abakar', 'Oumar', 'oumar.abakar@cf2m', 'key111222333', 0),
(11, 'michael.pitz', '$2y$10$AFDabmByLMmB9X55LMSy5eW31q.bpeJrtPYfD6VS5S35fGtX4/Uca', 'Pitz', 'Michaël', 'michael.pitz@cf2m.be', 'key5d79f7898ac7d1.65147365', 1);

--
-- Déchargement des données de la table `lerole`
--

INSERT INTO `lerole` (`idlerole`, `lintitule`, `ladescription`, `actif`) VALUES
(1, 'Membre du personnel', 'Toute personne faisant partie du personnel du CF2M', 1),
(2, 'Agent d\'accueil', 'Un membre du personnel du CF2m qui enregistre les arrivées et départs des stagiaires', 1),
(3, 'Référent Pédagogique', 'Un membre du personnel du CF2m qui s\'occupe du suivi pédagogique des stagiaires', 1),
(4, 'Administrateur Technique', 'Un membre du personnel du CF2m qui gère la configuration du système', 1),
(5, 'Stagiaire', 'Une personne externe au CF2m qui suit une formation', 1),
(6, 'Formateur', 'Un membre du personnel du CF2m qui donne des formations', 1),
(7, 'Vacataire', 'Une personne externe au CF2m qui donne des formations', 1);

--
-- Déchargement des données de la table `ledroit`
--

INSERT INTO `ledroit` (`idledroit`, `lintitule`, `ladescription`, `actif`) VALUES
(1, 'Imprimer la feuille de signature', 'Imprimer la feuille de signature pour chaque groupe', 1),
(2, 'Modifier un droit', 'Pouvoir modifier un droit existant', 1),
(3, 'Créer un rôle', 'Pouvoir créer un nouveau rôle pour l\'associer à un utilisateur', 1),
(4, 'Supprimer un droit', 'Pouvoir supprimer un droit existant', 1),
(5, 'Lire un droit', 'Pouvoir lire un droit existant associé à un rôle', 1),
(6, 'Créer un droit', 'Pouvoir créer un nouveau droit pour l\'associer à un rôle', 1),
(7, 'Lire un rôle', 'Pouvoir lire un rôle existant associé à un utilisateur', 1),
(8, 'Modifier un rôle', 'Pouvoir modifier un rôle existant', 1),
(9, 'Supprimer un rôle', 'Pouvoir supprimer un rôle existant', 1),
(10, 'Encoder les présences', 'Pouvoir encoder les présences, les retards, les absences des stagiaires', 1),
(11, 'Consulter les présences', 'Pouvoir visualiser les statistiques de présence des stagiaires', 1);

--
-- Déchargement des données de la table `lutilisateur_has_lerole`
--

INSERT INTO `lutilisateur_has_lerole` (`lutilisateur_idlutilisateur`, `lerole_idlerole`) VALUES
(1, 3),
(2, 2),
(9, 1),
(11, 4);

--
-- Déchargement des données de la table `leconge`
--

INSERT INTO `leconge` (`idleconge`, `lejour`, `laperiode`) VALUES
(1, '2019-10-02', 0),
(2, '2019-10-29', 1),
(3, '2019-10-01', 2),
(4, '2019-10-15', 2),
(5, '2019-10-02', 1);

--
-- Déchargement des données de la table `lasession_has_leconge`
--

INSERT INTO `lasession_has_leconge` (`lasession_idlasession`, `leconge_idleconge`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5);

--
-- Déchargement des données de la table `linscription`
--

INSERT INTO `linscription` (`idlinscription`, `debut`, `fin`, `lutilisateur_idlutilisateur`, `lasession_idlasession`, `actif`) VALUES
(1, '2019-01-07', '2019-11-08', 9, 1, 1),
(2, '2018-11-15', '2018-12-21', 9, 7, 1);

--
-- Déchargement des données de la table `lecode`
--

INSERT INTO `lecode` (`idlecode`, `lintitule`, `ladescription`) VALUES
(1, 'PR', 'Présent'),
(2, 'AJ', 'Absence justifiée'),
(3, 'AI', 'Absence injustifiée'),
(4, 'AM', 'Absence avec message'),
(5, 'RJ', 'Retard justifié'),
(6, 'RI', 'Retard injustifié'),
(7, 'RM', 'Retard avec message'),
(8, 'DA', 'Départ anticipé'),
(9, 'Z', 'Zoom (cours à distance)');

--
-- Déchargement des données de la table `lapresence`
--

INSERT INTO `lapresence` (`idlapresence`, `ampm`, `ladate`, `heuredebut`, `heurefin`, `lecode_idlecode`, `linscription_idlinscription`) VALUES
(1, 0, '2018-11-15', '09:00:00', '12:15:00', 1, 2),
(2, 1, '2018-11-15', '13:15:00', '16:30:00', 1, 2);

--
-- Déchargement des données de la table `lesuivi`
--

INSERT INTO `lesuivi` (`idlesuivi`, `ladate`, `ponctualite`, `evolution`, `tests`, `attitude`, `linscription_idlinscription`) VALUES
(1, '2018-12-05', 'OK', 'Apprentissage moyen', 'Problèmes avec CSS', 'OK', 2);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
