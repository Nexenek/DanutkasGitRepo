-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Kwi 2020, 13:04
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `choroby`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `choroby`
--

CREATE TABLE IF NOT EXISTS `choroby` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `zakazna` char(1) COLLATE utf8_polish_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `choroby`
--

INSERT INTO `choroby` (`id`, `nazwa`, `zakazna`) VALUES
(1, 'angina', 'T'),
(2, 'ospa', 'T'),
(3, 'różyczka', 'T'),
(4, 'grypa', 'T'),
(5, 'jelitówka', 'N'),
(6, 'odra', 'T'),
(7, 'świnka', 'T'),
(8, 'reumatyzm', 'N'),
(9, 'cukrzyca', 'N'),
(10, 'nowotwory', 'N'),
(11, 'PTSD', 'N'),
(12, 'POCHP', 'N'),
(13, 'nosówka', 'N'),
(14, 'astma', 'N'),
(15, 'COVID-19', 'T'),
(16, 'Kavasaki', 'N');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `choroby_objawy`
--

CREATE TABLE IF NOT EXISTS `choroby_objawy` (
  `id_choroby` int(11) NOT NULL,
  `id_objawy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `choroby_objawy`
--

INSERT INTO `choroby_objawy` (`id_choroby`, `id_objawy`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 8),
(1, 11),
(1, 12),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(2, 8),
(2, 9),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 9),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 3),
(5, 6),
(5, 7),
(5, 8),
(5, 12),
(6, 3),
(6, 5),
(6, 9),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 9),
(8, 13),
(8, 14),
(9, 4),
(10, 3),
(10, 5),
(10, 8),
(10, 10),
(10, 11),
(10, 12),
(11, 1),
(11, 12),
(12, 1),
(12, 11),
(12, 5),
(14, 1),
(14, 2),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 10),
(15, 11),
(15, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `objawy`
--

CREATE TABLE IF NOT EXISTS `objawy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `objawy`
--

INSERT INTO `objawy` (`id`, `nazwa`) VALUES
(1, 'ból głowy'),
(2, 'ból gardła'),
(3, 'gorączka'),
(4, 'bóle stawów'),
(5, 'osłabienie'),
(6, 'mdłości'),
(7, 'rozwolnienie'),
(8, 'wymioty'),
(9, 'wysypka'),
(10, 'katar'),
(11, 'kaszel'),
(12, 'drgawki'),
(13, 'ostry ból w łokciu'),
(14, 'lekki ból stawów');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `choroby`
--
ALTER TABLE `choroby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choroby_objawy`
--
ALTER TABLE `choroby_objawy`
  ADD PRIMARY KEY (`id_choroby`,`id_objawy`),
  ADD KEY `id_choroby` (`id_choroby`),
  ADD KEY `id_objawy` (`id_objawy`);

--
-- Indexes for table `objawy`
--
ALTER TABLE `objawy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `choroby`
--
ALTER TABLE `choroby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `objawy`
--
ALTER TABLE `objawy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `choroby_objawy`
--
ALTER TABLE `choroby_objawy`
  ADD CONSTRAINT `choroby_objawy_ibfk_1` FOREIGN KEY (`id_choroby`) REFERENCES `choroby` (`id`),
  ADD CONSTRAINT `choroby_objawy_ibfk_2` FOREIGN KEY (`id_objawy`) REFERENCES `objawy` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
