SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données :  `intranetv6`
--

--
-- Déchargement des données de la table `lafiliere`
--

INSERT INTO `lafiliere` (`idlafiliere`, `lenom`, `lacronyme`, `lacouleur`, `lepicto`, `actif`) VALUES
(1, 'Web Developer', 'WEB2', '#3c0497', '2019103111433060294.jpg', 1),
(2, 'Animateur Multimédia', 'AMM', '#e34085', '2019102314044192963.jpg', 1),
(3, 'PAO', 'pao', '#fad345', '2019102314051329116.jpg', 1),
(7, 'fff', 'ffffe', '#55d0ea', '2019102411311536223.png', 1),
(9, 'ssssaa', 'ssssaa', '#68d781', '2019102511582936646.jpg', 1),
(11, 'sqf', 'sqf', '#73abcc', '2019102811292697399.jpg', 1),
(12, 'ggg', 'ggg', '#55fd42', '2019102812031270776.png', 1),
(14, 'vdb', 'jc', '#9973cc', '2019102915400851323.jpg', 1);

--
-- Déchargement des données de la table `lasession`
--

INSERT INTO `lasession` (`idlasession`, `lenom`, `lacronyme`, `lannee`, `lenumero`, `letype`, `debut`, `fin`, `lafiliere_idfiliere`, `actif`) VALUES
(1, 'WEB2019', 'WEB2019', 2019, 1, 2, '2019-01-07', '2019-11-08', 1, 1),
(2, 'AMM2019', 'AMM2019', 2019, 1, 2, '2019-02-04', '2019-12-20', 2, 1),
(3, 'PAO2019', 'PAO2019', 2019, 1, 1, '2019-10-30', '2019-12-25', 3, 1),
(8, 'aaaaa', 'sssss', 2019, 1, 1, '2019-10-15', '2019-10-27', 1, 1),
(9, 'def', 'def', 2019, 1, 2, '2019-10-29', '2020-02-06', 14, 0),
(10, 'ghij', 'ghij', 2019, 2, 2, '2019-10-29', '2020-02-06', 1, 0),
(11, 'sdf', 'sdf', 2019, 2, 2, '2019-10-29', '2020-02-06', 1, 0),
(12, 'sdfe', 'sdfe', 2019, 2, 2, '2019-10-29', '2020-02-06', 7, 0);

--
-- Déchargement des données de la table `leconge`
--

INSERT INTO `leconge` (`idleconge`, `debut`, `fin`, `letype`) VALUES
(1, '2019-10-02', '2019-10-31', 1),
(2, '2019-10-29', '2019-10-30', 1),
(3, '2019-10-01', '2019-10-23', 3),
(5, '2019-10-02', '2019-10-31', 1);

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
-- Déchargement des données de la table `lerole`
--

INSERT INTO `lerole` (`idlerole`, `lintitule`, `ladescription`, `actif`) VALUES
(1, 'Membre du personnel', 'Toute personne faisant partie du personnel du CF2M', 1),
(2, 'Agent d\'accueil', 'La personne à l\'accueil qui enregistre les arrivées et départs des stagiaires', 1),
(3, 'Référent Pédagogique', 'La personne qui s\'occupe du suivi pédagogique des stagiaires', 1),
(4, 'Administrateur Technique', 'La personne qui gère la configuration du système', 1),
(5, 'Stagiaire', 'La personne qui suit une formation au CF2M', 1);

--
-- Déchargement des données de la table `linscription`
--

INSERT INTO `linscription` (`idlinscription`, `debut`, `fin`, `utilisateur_idutilisateur`, `lasession_idsession`, `actif`) VALUES
(1, '2019-01-07', '2019-11-08', 9, 1, 1),
(2, '2019-10-01', '2019-10-30', 1, 2, 1),
(3, '2019-10-29', '2019-11-22', 1, 1, 1),
(4, '2019-10-29', '2019-10-31', 1, 2, 1),
(6, '2019-10-02', '2019-10-05', 1, 8, 1),
(8, '2019-10-24', '2019-10-31', 1, 8, 1);

--
-- Déchargement des données de la table `lutilisateur`
--

INSERT INTO `lutilisateur` (`idlutilisateur`, `lenomutilisateur`, `lemotdepasse`, `lenom`, `leprenom`, `lemail`, `luniqueid`, `actif`) VALUES
(1, 'sylviane.mol', '$2y$10$INbdexessFV77JvfdT6UZOfhGhTiLPig5LklRzBE8FYYl/JJ/OGcO', 'Mol', 'Sylviane', 'sylviane.mol@cf2m.be', 'zer§rty', 1),
(2, 'pierre.sandron', '$2y$10$6UP1Ay5XP22TfgdW5mtuF..FpPiqn0V3U1R2AGv3W4JxveudUkOTS', 'Sandron', 'Pierre', 'pierre.sandron@cf2m.be', '', 1),
(9, 'oumar.abakar', '$2y$10$Uy5JcTI0Umd8g6yKdz03NujB.c8XAXvYOxUxiKpxmt1SqjAc.6wyC', 'Abakar', 'Oumar', 'oumar.abakar@cf2m', '', 1),
(11, 'michael.pitz', '$2y$10$AFDabmByLMmB9X55LMSy5eW31q.bpeJrtPYfD6VS5S35fGtX4/Uca', 'Pitz', 'Michaël', 'michael.pitz@cf2m.be', 'key5d79f7898ac7d1.65147365', 1);

--
-- Déchargement des données de la table `lutilisateur_has_lerole`
--

INSERT INTO `lutilisateur_has_lerole` (`lutilisateur_idutilisateur`, `lerole_idlerole`) VALUES
(9, 1),
(2, 2),
(1, 3),
(11, 4);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;