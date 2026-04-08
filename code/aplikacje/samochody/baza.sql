-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2019, 00:03
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolory`
--

CREATE TABLE IF NOT EXISTS `kolory` (
  `id` int(11) unsigned NOT NULL,
  `nazwa` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `doplata` decimal(10,2) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `kolory`
--

INSERT INTO `kolory` (`id`, `nazwa`, `doplata`) VALUES
(1, 'zielony', '0.00'),
(2, 'niebieski', '0.00'),
(3, 'czerwony', '0.00'),
(4, 'czarny', '0.00'),
(5, 'zielony metalik', '1000.00'),
(6, 'niebieski metalik', '1000.00'),
(7, 'czerwony metalik', '1000.00'),
(8, 'czarny metalik', '1000.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE IF NOT EXISTS `pojazdy` (
  `id` int(10) unsigned NOT NULL,
  `marka` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cena` decimal(15,0) unsigned NOT NULL,
  `kolor` int(11) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pojazdy`
--

INSERT INTO `pojazdy` (`id`, `marka`, `model`, `cena`, `kolor`) VALUES
(1, 'BM', 'alfa', '70000', 1),
(2, 'BM', 'alfa', '73000', 4),
(3, 'BM', 'alfa', '72000', 5),
(4, 'BM', 'alfa', '70000', 4),
(5, 'BM', 'alfa', '71000', 7),
(6, 'BM', 'alfa', '70000', 8),
(7, 'BM', 'beta', '87000', 3),
(8, 'BM', 'beta', '88000', 3),
(9, 'BM', 'beta', '87000', 2),
(10, 'BM', 'beta', '86000', 1),
(11, 'BM', 'beta', '87000', 1),
(12, 'BM', 'beta', '88000', 6),
(13, 'BM', 'beta', '84000', 8),
(14, 'BM', 'beta', '84000', 8),
(15, 'BM', 'beta', '85000', 7),
(16, 'BM', 'beta', '80000', 5),
(17, 'BM', 'beta', '80000', 5),
(18, 'BM', 'beta', '80000', 5),
(19, 'BM', 'beta', '82000', 2),
(20, 'BM', 'beta', '82000', 1),
(21, 'BM', 'beta', '77000', 3),
(22, 'BM', 'beta', '78000', 3),
(23, 'BM', 'beta', '87000', 2),
(24, 'BM', 'beta', '86000', 1),
(25, 'BM', 'beta', '77000', 1),
(26, 'BM', 'beta', '88000', 6),
(27, 'BM', 'beta', '84000', 3),
(28, 'BM', 'beta', '94000', 8),
(29, 'BM', 'beta', '85000', 7),
(30, 'BM', 'beta', '80000', 5),
(31, 'BM', 'beta', '90000', 5),
(32, 'BM', 'beta', '80000', 5),
(33, 'BM', 'beta', '92000', 2),
(34, 'BM', 'beta', '82000', 1),
(35, 'AM', 'beta', '77000', 3),
(36, 'AM', 'beta', '78000', 3),
(37, 'AM', 'beta', '77000', 2),
(38, 'AM', 'beta', '76000', 1),
(39, 'AM', 'beta', '77000', 1),
(40, 'AM', 'beta', '78000', 6),
(41, 'AM', 'beta', '74000', 8),
(42, 'AM', 'beta', '74000', 8),
(43, 'AM', 'beta', '75000', 7),
(44, 'AM', 'beta', '70000', 5),
(45, 'AM', 'beta', '87000', 5),
(46, 'AM', 'beta', '77000', 5),
(47, 'AM', 'beta', '72000', 2),
(48, 'AM', 'beta', '82000', 1),
(49, 'AM', 'meta', '97000', 5),
(50, 'AM', 'meta', '98000', 3),
(51, 'AM', 'meta', '97000', 2),
(52, 'AM', 'meta', '86000', 1),
(53, 'AM', 'meta', '97000', 1),
(54, 'AM', 'meta', '98000', 6),
(55, 'AM', 'meta', '79000', 8),
(56, 'AM', 'meta', '94000', 8),
(57, 'AM', 'meta', '95000', 7),
(58, 'AM', 'meta', '90000', 1),
(59, 'AM', 'meta', '87000', 1),
(60, 'AM', 'meta', '97000', 5),
(61, 'AM', 'meta', '92000', 2),
(62, 'AM', 'meta', '82000', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kolory`
--
ALTER TABLE `kolory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kolor` (`kolor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kolory`
--
ALTER TABLE `kolory`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD CONSTRAINT `pojazdy_ibfk_1` FOREIGN KEY (`kolor`) REFERENCES `kolory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
