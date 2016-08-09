-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Gazda: localhost
-- Timp de generare: 09 Aug 2016 la 23:36
-- Versiune server: 5.5.44-0ubuntu0.14.04.1
-- Versiune PHP: 5.5.9-1ubuntu4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Bază de date: `UkHero`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `Article`
--

CREATE TABLE IF NOT EXISTS `Article` (
  `topic` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(80) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `content` (`content`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Salvarea datelor din tabel `Article`
--

INSERT INTO `Article` (`topic`, `content`, `url`, `id`) VALUES
('cool top', '		gfgf		\n			', 'gol', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
