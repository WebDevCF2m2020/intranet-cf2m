-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2021 at 09:15 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intranetv8`
--

--
-- Dumping data for table `lafiliere`
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
-- Dumping data for table `lapresence`
--

INSERT INTO `lapresence` (`idlapresence`, `ampm`, `ladate`, `heuredebut`, `heurefin`, `typeAbsence`, `lecode_idlecode`, `linscription_idlinscription`) VALUES
(1, 0, '2018-11-15', '09:00:00', '12:15:00', NULL, 1, 2),
(2, 1, '2018-11-15', '13:15:00', '16:30:00', NULL, 1, 2),
(3, 0, '2021-03-01', '09:00:00', '12:15:00', NULL, 1, 10),
(4, 1, '2021-03-01', '13:15:00', '16:30:00', NULL, 1, 10),
(5, 0, '2021-03-02', '09:00:00', '12:15:00', NULL, 1, 10),
(6, 1, '2021-03-02', '13:15:00', '16:30:00', NULL, 1, 10),
(7, 0, '2021-03-03', '09:00:00', '12:15:00', NULL, 1, 10),
(8, 1, '2021-03-03', '13:15:00', '16:30:00', NULL, 1, 10),
(9, 0, '2021-03-04', '09:00:00', '12:15:00', NULL, 1, 10),
(10, 1, '2021-03-04', '13:15:00', '16:30:00', NULL, 1, 10),
(11, 0, '2021-03-05', '09:00:00', '12:15:00', NULL, 1, 10),
(12, 1, '2021-03-05', '13:15:00', '16:30:00', NULL, 1, 10),
(13, 0, '2021-03-08', '09:00:00', '12:15:00', NULL, 1, 10),
(14, 1, '2021-03-08', '13:15:00', '16:30:00', NULL, 1, 10),
(15, 0, '2021-03-09', '09:00:00', '12:15:00', NULL, 1, 10),
(16, 1, '2021-03-09', '13:15:00', '16:30:00', NULL, 1, 10),
(17, 0, '2021-03-10', '09:00:00', '12:15:00', NULL, 1, 10),
(18, 1, '2021-03-10', '13:15:00', '16:30:00', NULL, 1, 10),
(19, 0, '2021-03-11', '09:00:00', '12:15:00', NULL, 1, 10),
(20, 1, '2021-03-11', '13:15:00', '16:30:00', NULL, 1, 10),
(21, 0, '2021-03-12', '09:00:00', '12:15:00', NULL, 1, 10),
(22, 1, '2021-03-12', '13:15:00', '16:30:00', NULL, 1, 10),
(23, 0, '2021-03-15', '09:00:00', '12:15:00', NULL, 1, 10),
(24, 1, '2021-03-15', '13:15:00', '16:30:00', NULL, 1, 10),
(25, 0, '2021-03-16', '09:00:00', '12:15:00', NULL, 1, 10),
(26, 1, '2021-03-16', '13:15:00', '16:30:00', NULL, 1, 10),
(27, 0, '2021-03-17', '09:00:00', '12:15:00', NULL, 1, 10),
(28, 1, '2021-03-17', '13:15:00', '16:30:00', NULL, 1, 10),
(29, 0, '2021-03-18', '09:00:00', '12:15:00', NULL, 1, 10),
(30, 1, '2021-03-18', '13:15:00', '16:30:00', NULL, 1, 10),
(31, 0, '2021-03-19', '09:00:00', '12:15:00', NULL, 1, 10),
(32, 1, '2021-03-19', '13:15:00', '16:30:00', NULL, 1, 10),
(33, 0, '2021-03-22', '09:00:00', '12:15:00', NULL, 1, 10),
(34, 1, '2021-03-22', '13:15:00', '16:30:00', NULL, 1, 10),
(35, 0, '2021-03-23', '09:00:00', '12:15:00', NULL, 1, 10),
(36, 1, '2021-03-23', '13:15:00', '16:30:00', NULL, 1, 10),
(37, 0, '2021-03-24', '09:00:00', '12:15:00', NULL, 1, 10),
(38, 1, '2021-03-24', '13:15:00', '16:30:00', NULL, 1, 10),
(39, 0, '2021-03-25', '09:00:00', '12:15:00', NULL, 1, 10),
(40, 1, '2021-03-25', '13:15:00', '16:30:00', NULL, 1, 10),
(41, 0, '2021-03-26', '09:00:00', '12:15:00', NULL, 1, 10),
(42, 1, '2021-03-26', '13:15:00', '16:30:00', NULL, 1, 10),
(43, 0, '2021-03-29', '09:00:00', '12:15:00', NULL, 1, 10),
(44, 1, '2021-03-29', '13:15:00', '16:30:00', NULL, 1, 10),
(45, 0, '2021-03-30', '09:00:00', '12:15:00', NULL, 1, 10),
(46, 1, '2021-03-30', '13:15:00', '16:30:00', NULL, 1, 10),
(47, 0, '2021-03-31', '09:00:00', '12:15:00', NULL, 1, 10),
(48, 1, '2021-03-31', '13:15:00', '16:30:00', NULL, 1, 10);

--
-- Dumping data for table `lasession`
--

INSERT INTO `lasession` (`idlasession`, `lenom`, `lacronyme`, `lenumero`, `letype`, `debut`, `fin`, `lafiliere_idlafiliere`, `actif`) VALUES
(1, 'Web Développeur 2019', 'WEB2019', 1, 2, '2019-01-07', '2019-11-08', 1, 1),
(2, 'Animateur Multimédia 2019', 'AMM2019', 1, 2, '2019-02-04', '2019-12-20', 2, 1),
(3, 'PAO 2019', 'PAO2019', 1, 2, '2019-10-30', '2019-12-25', 3, 1),
(4, 'Aide-Comptable 2019', 'AC2019', 1, 2, '2019-10-21', '2019-12-20', 8, 0),
(5, 'Atouts Jeunes 2019 - session 1', 'AJ2019-1', 2, 3, '2019-04-15', '2019-06-14', 6, 0),
(6, 'Atouts Jeunes 2019 - session 2', 'AJ2019-2', 2, 3, '2019-10-29', '2020-02-06', 6, 0),
(7, 'Préformation Web Développeur 2019', 'PREFOWEB2019', 1, 2, '2018-11-15', '2018-12-21', 1, 0),
(8, 'Réseaux 2019', 'TSPCR2019', 1, 2, '2019-10-15', '2019-10-27', 4, 1),
(9, 'Aventure Digitale 2019 - session 1', 'AD2019-1', 1, 3, '2019-10-29', '2020-02-06', 5, 0),
(10, 'Aventure Digitale 2019 - session 2', 'AD2019-2', 2, 3, '2019-10-21', '2019-12-20', 5, 1),
(11, 'Aventure Digitale 2020 - session 1', 'AD2020-1', 1, 3, '2020-03-02', '2020-05-15', 5, 1),
(12, 'Atouts Jeunes 2020 - session 1', 'AJ2020-1', 1, 3, '2020-03-23', '2020-06-12', 6, 0),
(13, 'Web Développeur 2020', 'WEB2020', 1, 2, '2020-02-17', '2021-04-30', 1, 1),
(14, 'Préformation Web Développeur 2021', 'PREFOWEB2021', 1, 1, '2021-05-10', '2021-06-18', 1, 1),
(15, 'Préformation WEB Développeur 2020', 'PREFOWEB2020', 1, 1, '2020-01-06', '2020-02-14', 1, 1),
(16, 'Préformation Digital Designer 2021', 'PREFODD2021', 1, 1, '2021-02-08', '2021-03-19', 7, 1),
(17, 'Digital Designer 2021', 'DD2021', 1, 2, '2021-03-22', '2022-01-14', 7, 1),
(18, 'Préformation Animateur Multimédia 2021', 'PREFOAMM2021', 1, 1, '2021-03-22', '2021-05-21', 2, 1),
(19, 'Animateur Multimédia 2021', 'AMM2021', 1, 2, '2021-05-25', '2022-03-04', 2, 1),
(20, 'Web Développeur 2021', 'WEB2021', 1, 2, '2021-06-21', '2022-07-15', 1, 1);

--
-- Dumping data for table `lasession_has_leconge`
--

INSERT INTO `lasession_has_leconge` (`lasession_idlasession`, `leconge_idleconge`) VALUES
(13, 6),
(17, 6),
(18, 6),
(13, 7),
(17, 7),
(18, 7),
(13, 8),
(17, 8),
(18, 8),
(13, 9),
(17, 9),
(18, 9),
(14, 10),
(17, 10),
(18, 10),
(17, 11),
(19, 11),
(20, 11),
(17, 12),
(19, 12),
(20, 12),
(17, 13),
(19, 13),
(20, 13),
(17, 14),
(19, 14),
(20, 14),
(17, 15),
(19, 15),
(20, 15),
(17, 16),
(19, 16),
(20, 16),
(17, 17),
(19, 17),
(20, 17),
(17, 18),
(19, 18),
(20, 18),
(17, 19),
(19, 19),
(20, 19),
(17, 20),
(19, 20),
(20, 20),
(17, 21),
(19, 21),
(20, 21),
(17, 22),
(19, 22),
(20, 22),
(17, 23),
(19, 23),
(20, 23),
(17, 24),
(19, 24),
(20, 24);

--
-- Dumping data for table `lecode`
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
-- Dumping data for table `leconge`
--

INSERT INTO `leconge` (`idleconge`, `lejour`, `laperiode`) VALUES
(1, '2019-10-02', 0),
(2, '2019-10-29', 1),
(3, '2019-10-01', 2),
(4, '2019-10-15', 2),
(5, '2019-10-02', 1),
(6, '2021-04-06', 2),
(7, '2021-04-07', 2),
(8, '2021-04-08', 2),
(9, '2021-04-09', 2),
(10, '2021-05-14', 2),
(11, '2021-07-12', 2),
(12, '2021-07-13', 2),
(13, '2021-07-14', 2),
(14, '2021-07-15', 2),
(15, '2021-07-16', 2),
(16, '2021-07-19', 2),
(17, '2021-07-20', 2),
(18, '2021-07-22', 2),
(19, '2021-07-23', 2),
(20, '2021-07-26', 2),
(21, '2021-07-27', 2),
(22, '2021-07-28', 2),
(23, '2021-07-29', 2),
(24, '2021-07-30', 2);

--
-- Dumping data for table `ledroit`
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
(11, 'Consulter les présences', 'Pouvoir visualiser les statistiques de présence des stagiaires', 1),
(12, 'Lire le suivi pédagogique', 'Pouvoir lire le suivi pédagogique d\'un stagiaire', 1),
(13, 'Encoder le suivi pédagogique', 'Pouvoir encoder le suivi pédagogique d\'un stagiaire', 1);

--
-- Dumping data for table `lerole`
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
-- Dumping data for table `lerole_has_ledroit`
--

INSERT INTO `lerole_has_ledroit` (`lerole_idlerole`, `ledroit_idledroit`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(2, 10),
(3, 10),
(2, 11),
(3, 11),
(5, 12),
(6, 12),
(6, 13);

--
-- Dumping data for table `lesuivi`
--

INSERT INTO `lesuivi` (`idlesuivi`, `ladate`, `ponctualite`, `evolution`, `tests`, `attitude`, `linscription_idlinscription`) VALUES
(1, '2018-12-05', 'OK', 'Apprentissage moyen', 'Problèmes avec CSS', 'OK', 2),
(2, '2020-01-22', 'OK', 'Pas de soucis', 'OK pour le site perso', 'Bonne attitude', 9),
(3, '2020-02-12', 'OK', 'Pas de problèmes. OK pour la FQ', 'OK en HTML5 et CSS3', 'OK', 9),
(4, '2020-04-15', 'Quelques retards', 'RAS', 'test SQL : OK sauf pour les jointures', 'OK', 10),
(5, '2020-06-24', 'OK', 'Front-end : OK\r\nPHP MySQL : a de bonnes bases', 'Test CRUD : OK', 'OK', 10),
(6, '2020-10-06', 'OK', 'Front-end : pas de problèmes sauf JS\r\nPHP : doit revoir les sessions\r\nWordPress : connait déjà', 'Pas de test', 'OK', 10),
(7, '2021-01-26', 'OK', 'Plus de problèmes avec JS, a bien travaillé.\r\nComprends bien OO', 'Projet WordPress OK', 'RAS', 10);

--
-- Dumping data for table `linscription`
--

INSERT INTO `linscription` (`idlinscription`, `debut`, `fin`, `raisonFinInscription`, `lutilisateur_idlutilisateur`, `lasession_idlasession`, `actif`) VALUES
(1, '2019-01-07', '2019-11-08', NULL, 9, 1, 1),
(2, '2018-11-15', '2018-12-21', NULL, 9, 7, 1),
(9, '2020-01-06', '2020-02-14', NULL, 5, 15, 1),
(10, '2020-02-17', '2021-04-30', NULL, 5, 13, 1);

--
-- Dumping data for table `lutilisateur`
--

INSERT INTO `lutilisateur` (`idlutilisateur`, `lenomutilisateur`, `lemotdepasse`, `lenom`, `leprenom`, `lemail`, `luniqueid`, `actif`) VALUES
(1, 'sylviane.mol', '$2y$10$INbdexessFV77JvfdT6UZOfhGhTiLPig5LklRzBE8FYYl/JJ/OGcO', 'Mol', 'Sylviane', 'sylviane.mol@cf2m.be', 'zer§rty', 1),
(2, 'pierre.sandron', '$2y$10$6UP1Ay5XP22TfgdW5mtuF..FpPiqn0V3U1R2AGv3W4JxveudUkOTS', 'Sandron', 'Pierre', 'pierre.sandron@cf2m.be', 'key0123456789', 1),
(3, 'andre.palmisano', '$2y$10$QnhYfzDd.qCjmSHADbQ0q.p6YFLkWmPYLbm2p6CWncJpeiKF7ic.u', 'Palmisano', 'André', 'andre.palmisano@cf2m.be', 'ReinWired$', 1),
(4, 'marie.dufour', '$2y$10$xfYGeSybggyE/DcsBkHSuegswfQ5Q1zycOnFwPgFEN4WXia8l.wt.', 'Dufour', 'Marie', 'marie.dufour@cf2m.be', 'key012345', 1),
(5, 'clovis.reuss', '$2y$10$H2Nu1AWyWVfcuVYIFKLff.nZI4vYz1XG3hABUFqT0RxmM1hi78DFi', 'Reuss', 'Clovis', 'clovis.reuss@yahoo.com', 'keyCLORU', 1),
(6, 'monique.brys', '$2y$10$ueJrAK1kVrflrr0r6iU3Oe/0xXnzQWfkv66FPsXRei6WCklYmDvyi', 'Brys', 'Monique', 'monique.brys@cf2m.be', 'keyMOMO', 1),
(9, 'oumar.abakar', '$2y$10$Uy5JcTI0Umd8g6yKdz03NujB.c8XAXvYOxUxiKpxmt1SqjAc.6wyC', 'Abakar', 'Oumar', 'oumar.abakar@cf2m', 'key111222333', 0),
(11, 'michael.pitz', '$2y$10$AFDabmByLMmB9X55LMSy5eW31q.bpeJrtPYfD6VS5S35fGtX4/Uca', 'Pitz', 'Michaël', 'michael.pitz@cf2m.be', 'key5d79f7898ac7d1.65147365', 1);

--
-- Dumping data for table `lutilisateur_has_lerole`
--

INSERT INTO `lutilisateur_has_lerole` (`lutilisateur_idlutilisateur`, `lerole_idlerole`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(6, 1),
(11, 1),
(6, 2),
(1, 3),
(11, 4),
(5, 5),
(9, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(11, 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
