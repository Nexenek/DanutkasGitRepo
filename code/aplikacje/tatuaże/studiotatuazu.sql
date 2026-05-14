-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 03, 2024 at 10:52 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studiotatuazu`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `style`
--

CREATE TABLE `style` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `style`
--

INSERT INTO `style` (`id`, `nazwa`) VALUES
(1, 'realistyczny'),
(2, 'artystyczny'),
(3, 'tradycyjny'),
(4, 'hanpoke'),
(5, 'dotwork'),
(6, 'orientalne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tatuaze`
--

CREATE TABLE `tatuaze` (
  `id` int(10) UNSIGNED NOT NULL,
  `style_id` int(10) UNSIGNED NOT NULL,
  `wzor` varchar(50) DEFAULT NULL,
  `plik` varchar(50) DEFAULT NULL,
  `kolor` varchar(20) DEFAULT NULL,
  `cena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `tatuaze`
--

INSERT INTO `tatuaze` (`id`, `style_id`, `wzor`, `plik`, `kolor`, `cena`) VALUES
(1, 4, 'waz', 'waz.png', 'czarny', 50),
(2, 4, 'waz', 'waz.png', 'niebieski', 60),
(3, 4, 'waz', 'waz.png', 'zielony', 60),
(4, 1, 'tygrys', 'tygrys.png', 'czarny', 100),
(5, 1, 'tygrys', 'tygrys.png', 'złoty', 110),
(6, 6, 'smok', 'smok.png', 'czerwony', 150),
(7, 6, 'smok', 'smok.png', 'zielony', 150),
(8, 5, 'rozeta', 'rozeta.png', 'czarny', 50),
(9, 5, 'rozeta', 'rozeta.png', 'czerwony', 60),
(10, 5, 'rozeta', 'rozeta.png', 'niebieski', 60),
(11, 3, 'kwiaty', 'kwiaty.png', 'czerwony', 40),
(12, 3, 'kwiaty', 'kwiaty.png', 'niebieski', 40),
(13, 3, 'kwiaty', 'kwiaty.png', 'zółty', 40),
(14, 6, 'kwiat', 'kwiat.png', 'czarny', 130),
(15, 6, 'kwiat', 'kwiat.png', 'czerwony', 140),
(16, 6, 'kwiat', 'kwiat.png', 'zielony', 140),
(17, 2, 'koliber', 'koliber.png', 'czarny', 200),
(18, 2, 'koliber', 'koliber.png', 'wielokolorowy', 250),
(19, 4, 'delfin', 'delfin.png', 'czarny', 50),
(20, 4, 'celtycki', 'celtic.png', 'czarny', 50),
(21, 2, 'anioł', 'angel.png', 'czarny', 200),
(22, 2, 'anioł', 'angel.png', 'szary', 170);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tatuaze`
--
ALTER TABLE `tatuaze`
  ADD PRIMARY KEY (`id`),
  ADD KEY `style_id` (`style_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `style`
--
ALTER TABLE `style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tatuaze`
--
ALTER TABLE `tatuaze`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tatuaze`
--
ALTER TABLE `tatuaze`
  ADD CONSTRAINT `tatuaze_ibfk_1` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
