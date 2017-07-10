-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 10 Juillet 2017 à 16:28
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `tron`
--
CREATE DATABASE IF NOT EXISTS `tron` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tron`;

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addgame`(IN `player` INT(4), IN `time` INT(255))
    NO SQL
INSERT INTO game(player, time) VALUES(player, time)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `player` int(4) NOT NULL,
  `time` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;