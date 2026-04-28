-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2026 at 03:36 PM
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
-- Database: `zgloszenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personel`
--

CREATE TABLE `personel` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'policjant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` (`id`, `imie`, `nazwisko`, `status`) VALUES
(1, 'Jan', 'Kos', 'policjant'),
(2, 'Aleksander', 'Nowak', 'policjant'),
(3, 'Joanna', 'Nosowska', 'ratownik'),
(4, 'Karolina', 'Mizera', 'ratownik'),
(5, 'Katarzyna', 'Wotyk', 'policjant'),
(6, 'Anna', 'Binarek', 'policjant'),
(7, 'Eliza', 'Idus', 'policjant'),
(8, 'Roman', 'Kieraś', 'policjant'),
(9, 'Leon', 'Zawodowiec', 'ratownik'),
(10, 'Aleksander', 'Orłoś', 'policjant'),
(11, 'Inga', 'Lis', 'policjant'),
(12, 'Alfred', 'Wolny', 'ratownik'),
(13, 'Tomasz', 'Warta', 'ratownik'),
(14, 'Andrzej', 'Wilk', 'policjant'),
(15, 'Katarzyna', 'Lenos', 'ratownik'),
(16, 'Tomasz', 'Wieczysty', 'policjant'),
(17, 'August', 'Wielki', 'ratownik'),
(18, 'Ernest', 'Miły', 'policjant');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE `pojazdy` (
  `id` int(11) NOT NULL,
  `marka` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `typ` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `pojazdy`
--

INSERT INTO `pojazdy` (`id`, `marka`, `model`, `typ`) VALUES
(1, 'BM', 'aster', 'R'),
(2, 'vol', 'opek', 'K'),
(3, 'BM', 'aster', 'R'),
(4, 'BM', 'aster', 'R'),
(5, 'BM', 'aster', 'R'),
(6, 'BM', 'lira', 'R'),
(7, 'BM', 'aster', 'K'),
(8, 'BM', 'aster', 'R'),
(9, 'vol', 'opek', 'R'),
(10, 'vol', 'opek', 'R'),
(11, 'vol', 'opek', 'K'),
(12, 'BM', 'aster', 'K'),
(13, 'BM', 'lira', 'R'),
(14, 'BM', 'aster', 'R'),
(15, 'vol', 'opek', 'R'),
(16, 'BM', 'lira', 'R'),
(17, 'BM', 'aster', 'R'),
(18, 'BM', 'aster', 'R'),
(19, 'vol', 'opek', 'R'),
(20, 'vol', 'opek', 'R'),
(21, 'BM', 'aster', 'R'),
(22, 'BM', 'lira', 'R'),
(23, 'vol', 'opek', 'R'),
(24, 'BM', 'aster', 'R'),
(25, 'BM', 'aster', 'R'),
(26, 'BM', 'aster', 'K'),
(27, 'BM', 'lira', 'K'),
(28, 'BM', 'aster', 'R'),
(29, 'BM', 'lira', 'R'),
(30, 'vol', 'opek', 'R');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestr`
--

CREATE TABLE `rejestr` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `id_personel` int(11) NOT NULL,
  `id_pojazd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `rejestr`
--

INSERT INTO `rejestr` (`id`, `data`, `id_personel`, `id_pojazd`) VALUES
(1, '2018-04-17', 1, 2),
(2, '2019-04-17', 1, 1),
(3, '2019-04-17', 10, 6),
(4, '2018-08-06', 16, 15),
(5, '2019-08-13', 18, 25),
(6, '2018-05-06', 15, 11),
(7, '2019-02-23', 9, 12),
(8, '2018-08-06', 16, 15),
(9, '2019-08-13', 7, 23),
(10, '2018-11-11', 11, 25),
(11, '2019-04-23', 11, 3),
(12, '2018-12-01', 6, 9),
(13, '2019-09-30', 8, 1),
(14, '2018-08-06', 7, 29),
(15, '2019-04-16', 14, 28),
(16, '2018-06-06', 10, 30),
(17, '2019-07-15', 12, 12),
(18, '2018-08-06', 13, 11),
(19, '2019-08-18', 12, 11),
(20, '2018-08-06', 15, 2),
(21, '2019-03-23', 17, 2),
(22, '2018-02-09', 10, 28),
(23, '2019-11-10', 18, 1),
(24, '2018-11-16', 8, 15),
(25, '2019-11-25', 8, 22),
(26, '2018-10-28', 6, 6),
(27, '2019-02-12', 5, 6),
(28, '2018-12-02', 1, 19),
(29, '2019-01-11', 1, 23),
(30, '2026-04-07', 1, 14);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rejestr`
--
ALTER TABLE `rejestr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_personel` (`id_personel`),
  ADD KEY `id_pojazd` (`id_pojazd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personel`
--
ALTER TABLE `personel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rejestr`
--
ALTER TABLE `rejestr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rejestr`
--
ALTER TABLE `rejestr`
  ADD CONSTRAINT `rejestr_ibfk_1` FOREIGN KEY (`id_pojazd`) REFERENCES `pojazdy` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `rejestr_ibfk_2` FOREIGN KEY (`id_personel`) REFERENCES `personel` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
