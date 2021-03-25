-- MySQL Script generated by MySQL Workbench
-- Thu Mar 25 11:32:04 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema intranetv8
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema intranetv8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `intranetv8` DEFAULT CHARACTER SET utf8 ;
USE `intranetv8` ;

-- -----------------------------------------------------
-- Table `intranetv8`.`lafiliere`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lafiliere` (
  `idlafiliere` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenom` VARCHAR(45) NOT NULL,
  `lacronyme` VARCHAR(10) NOT NULL,
  `lacouleur` VARCHAR(10) NULL DEFAULT NULL,
  `lepicto` VARCHAR(45) NULL DEFAULT NULL,
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idlafiliere`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lasession`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lasession` (
  `idlasession` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenom` VARCHAR(45) NOT NULL,
  `lacronyme` VARCHAR(16) NOT NULL,
  `lenumero` TINYINT(1) NULL DEFAULT NULL,
  `letype` TINYINT(1) NOT NULL,
  `debut` DATE NOT NULL,
  `fin` DATE NOT NULL,
  `lafiliere_idlafiliere` TINYINT(3) UNSIGNED NOT NULL,
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idlasession`),
  INDEX `fk_session_filiere1_idx` (`lafiliere_idlafiliere` ASC),
  CONSTRAINT `fk_session_filiere1`
    FOREIGN KEY (`lafiliere_idlafiliere`)
    REFERENCES `intranetv8`.`lafiliere` (`idlafiliere`))
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lutilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lutilisateur` (
  `idlutilisateur` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lenomutilisateur` VARCHAR(80) NOT NULL,
  `lemotdepasse` VARCHAR(255) NOT NULL COMMENT 'crypt with password_hash - PASSWORD_DEFAULT ',
  `lenom` VARCHAR(45) NOT NULL,
  `leprenom` VARCHAR(45) NOT NULL,
  `lemail` VARCHAR(180) NOT NULL,
  `luniqueid` CHAR(26) NOT NULL COMMENT 'create with uniqid(key,true) string(26)',
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idlutilisateur`),
  UNIQUE INDEX `lenomutilisateur_UNIQUE` (`lenomutilisateur` ASC),
  UNIQUE INDEX `lemail_UNIQUE` (`lemail` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`linscription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`linscription` (
  `idlinscription` INT(10) UNSIGNED NOT NULL,
  `debut` DATE NULL DEFAULT NULL,
  `fin` DATE NULL DEFAULT NULL,
  `raisonFinInscription` VARCHAR(256) NULL,
  `lutilisateur_idlutilisateur` MEDIUMINT(8) UNSIGNED NOT NULL,
  `lasession_idlasession` INT(10) UNSIGNED NOT NULL,
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idlinscription`),
  INDEX `fk_inscription_utilisateur1_idx` (`lutilisateur_idlutilisateur` ASC),
  INDEX `fk_inscription_session1_idx` (`lasession_idlasession` ASC),
  CONSTRAINT `fk_inscription_session1`
    FOREIGN KEY (`lasession_idlasession`)
    REFERENCES `intranetv8`.`lasession` (`idlasession`),
  CONSTRAINT `fk_inscription_utilisateur1`
    FOREIGN KEY (`lutilisateur_idlutilisateur`)
    REFERENCES `intranetv8`.`lutilisateur` (`idlutilisateur`)
    ON DELETE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lecode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lecode` (
  `idlecode` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` VARCHAR(5) NOT NULL,
  `ladescription` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlecode`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lapresence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lapresence` (
  `idlapresence` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ampm` TINYINT(1) UNSIGNED NOT NULL COMMENT '0 => matin\\n1 => après midi',
  `ladate` DATE NOT NULL,
  `heuredebut` TIME NOT NULL,
  `heurefin` TIME NOT NULL,
  `typeAbsence` VARCHAR(24) NULL COMMENT 'Types d\'absence possibles: Administratif, Médical, Autre',
  `lecode_idlecode` TINYINT(3) UNSIGNED NOT NULL,
  `linscription_idlinscription` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlapresence`),
  INDEX `fk_lapresence_linscription1_idx` (`linscription_idlinscription` ASC),
  INDEX `lecode_idlecode` (`lecode_idlecode` ASC),
  CONSTRAINT `fk_lapresence_linscription1`
    FOREIGN KEY (`linscription_idlinscription`)
    REFERENCES `intranetv8`.`linscription` (`idlinscription`),
  CONSTRAINT `lapresence_ibfk_1`
    FOREIGN KEY (`lecode_idlecode`)
    REFERENCES `intranetv8`.`lecode` (`idlecode`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`leconge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`leconge` (
  `idleconge` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lejour` DATE NOT NULL COMMENT 'jour du congé',
  `laperiode` TINYINT(1) NOT NULL COMMENT '0 = matin, 1 = après-midi, 2 = toute la journée',
  PRIMARY KEY (`idleconge`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lasession_has_leconge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lasession_has_leconge` (
  `lasession_idlasession` INT(10) UNSIGNED NOT NULL,
  `leconge_idleconge` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`lasession_idlasession`, `leconge_idleconge`),
  INDEX `fk_lasession_has_leconge_leconge1_idx` (`leconge_idleconge` ASC),
  INDEX `fk_lasession_has_leconge_lasession1_idx` (`lasession_idlasession` ASC),
  CONSTRAINT `fk_lasession_has_leconge_lasession1`
    FOREIGN KEY (`lasession_idlasession`)
    REFERENCES `intranetv8`.`lasession` (`idlasession`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_lasession_has_leconge_leconge1`
    FOREIGN KEY (`leconge_idleconge`)
    REFERENCES `intranetv8`.`leconge` (`idleconge`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`ledroit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`ledroit` (
  `idledroit` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` VARCHAR(60) NOT NULL,
  `ladescription` VARCHAR(300) NULL DEFAULT NULL,
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idledroit`),
  UNIQUE INDEX `theintitule_UNIQUE` (`lintitule` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lerole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lerole` (
  `idlerole` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lintitule` VARCHAR(60) NOT NULL,
  `ladescription` VARCHAR(300) NULL DEFAULT NULL,
  `actif` TINYINT(3) UNSIGNED NULL DEFAULT '1',
  PRIMARY KEY (`idlerole`),
  UNIQUE INDEX `intitule_UNIQUE` (`lintitule` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lerole_has_ledroit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lerole_has_ledroit` (
  `lerole_idlerole` SMALLINT(5) UNSIGNED NOT NULL,
  `ledroit_idledroit` SMALLINT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`lerole_idlerole`, `ledroit_idledroit`),
  INDEX `fk_lerole_has_ledroit_ledroit1_idx` (`ledroit_idledroit` ASC),
  INDEX `fk_lerole_has_ledroit_lerole1_idx` (`lerole_idlerole` ASC),
  CONSTRAINT `fk_lerole_has_ledroit_ledroit1`
    FOREIGN KEY (`ledroit_idledroit`)
    REFERENCES `intranetv8`.`ledroit` (`idledroit`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_lerole_has_ledroit_lerole1`
    FOREIGN KEY (`lerole_idlerole`)
    REFERENCES `intranetv8`.`lerole` (`idlerole`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lesuivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lesuivi` (
  `idlesuivi` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ladate` DATE NOT NULL,
  `ponctualite` VARCHAR(512) NOT NULL,
  `evolution` VARCHAR(512) NOT NULL,
  `tests` VARCHAR(512) NOT NULL,
  `attitude` VARCHAR(512) NOT NULL,
  `linscription_idlinscription` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idlesuivi`),
  INDEX `fk_lesuivi_linscription1_idx` (`linscription_idlinscription` ASC),
  CONSTRAINT `fk_lesuivi_linscription1`
    FOREIGN KEY (`linscription_idlinscription`)
    REFERENCES `intranetv8`.`linscription` (`idlinscription`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `intranetv8`.`lutilisateur_has_lerole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `intranetv8`.`lutilisateur_has_lerole` (
  `lutilisateur_idlutilisateur` MEDIUMINT(8) UNSIGNED NOT NULL,
  `lerole_idlerole` SMALLINT(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`lerole_idlerole`, `lutilisateur_idlutilisateur`),
  INDEX `fk_utilisateur_has_lerole_lerole1_idx` (`lerole_idlerole` ASC),
  INDEX `fk_utilisateur_has_lerole_utilisateur_idx` (`lutilisateur_idlutilisateur` ASC),
  CONSTRAINT `fk_utilisateur_has_lerole_lerole1`
    FOREIGN KEY (`lerole_idlerole`)
    REFERENCES `intranetv8`.`lerole` (`idlerole`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_utilisateur_has_lerole_utilisateur`
    FOREIGN KEY (`lutilisateur_idlutilisateur`)
    REFERENCES `intranetv8`.`lutilisateur` (`idlutilisateur`)
    ON DELETE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;