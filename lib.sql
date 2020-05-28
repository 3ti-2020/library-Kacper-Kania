-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 28 Maj 2020, 00:50
-- Wersja serwera: 5.7.23
-- Wersja PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

DROP TABLE IF EXISTS `autorzy`;
CREATE TABLE IF NOT EXISTS `autorzy` (
  `id_autorzy` int(11) NOT NULL,
  `Imie` text COLLATE utf8_unicode_ci NOT NULL,
  `Nazwisko` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `test1` (`id_autorzy`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`id_autorzy`, `Imie`, `Nazwisko`) VALUES
(1, 'Andrzej', 'Sapkowski'),
(2, 'Harlen', 'Coben'),
(3, 'Stephen', 'King'),
(4, 'Lee', 'Child'),
(5, 'Wojciech', 'Chmielarz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `biblioteka`
--

DROP TABLE IF EXISTS `biblioteka`;
CREATE TABLE IF NOT EXISTS `biblioteka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_autorzy` int(11) NOT NULL,
  `id_tytul` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test1` (`id_autorzy`),
  KEY `test2` (`id_tytul`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `biblioteka`
--

INSERT INTO `biblioteka` (`id`, `id_autorzy`, `id_tytul`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tytul`
--

DROP TABLE IF EXISTS `tytul`;
CREATE TABLE IF NOT EXISTS `tytul` (
  `id_tytul` int(11) NOT NULL,
  `tytul` text COLLATE utf8_unicode_ci NOT NULL,
  `ISBN` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tytul`
--

INSERT INTO `tytul` (`id_tytul`, `tytul`, `ISBN`) VALUES
(1, 'Rana', 12345),
(2, 'Wiedzmin', 23456),
(3, 'Run Away', 34567),
(4, 'To', 45678),
(5, 'Podejrzany', 56789);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
