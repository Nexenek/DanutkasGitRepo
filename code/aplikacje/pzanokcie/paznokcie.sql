-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2026 at 08:54 PM
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
-- Database: `paznokcie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id` int(10) UNSIGNED NOT NULL,
  `ksztalty_id` int(10) UNSIGNED NOT NULL,
  `wzory_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `kolor` int(10) UNSIGNED NOT NULL,
  `topKlient` tinyint(1) UNSIGNED DEFAULT NULL,
  `termin` datetime DEFAULT NULL,
  `cena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id`, `ksztalty_id`, `wzory_id`, `imie`, `nazwisko`, `kolor`, `topKlient`, `termin`, `cena`) VALUES
(1, 1, 1, 'Urszula', '', 124, 0, '2024-05-29 12:00:00', 90),
(2, 1, 1, 'Anna', '', 124, 1, '2024-05-22 12:00:00', 90),
(3, 1, 5, 'Ewa', '', 135, 0, '2024-05-27 13:00:00', 90),
(4, 1, 4, 'Monika', '', 224, 1, '2024-05-27 14:00:00', 90),
(5, 4, 5, 'Paulina', '', 152, 0, '2024-05-22 15:00:00', 90),
(6, 2, 3, 'Ewelina', '', 189, 1, '2024-05-22 16:00:00', 100),
(7, 2, 5, 'Joanna', '', 221, 1, '2024-05-22 17:00:00', 100),
(8, 1, 2, 'Sylwia', '', 123, 0, '2024-05-22 18:00:00', 90),
(9, 3, 1, 'Marta', '', 145, 0, '2024-05-23 12:00:00', 90),
(10, 4, 1, 'Agnieszka', '', 124, 0, '2024-05-23 13:00:00', 90),
(11, 3, 1, 'Zuza', '', 145, 0, '2024-05-23 14:00:00', 90),
(12, 4, 1, 'Roma', '', 124, 0, '2024-05-23 15:00:00', 90),
(13, 3, 5, 'Małgorzata', '', 145, 1, '2024-05-23 16:00:00', 100),
(14, 3, 5, 'Jagna', '', 124, 1, '2024-05-23 17:00:00', 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksztalty`
--

CREATE TABLE `ksztalty` (
  `id` int(10) UNSIGNED NOT NULL,
  `ksztalt` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `ksztalty`
--

INSERT INTO `ksztalty` (`id`, `ksztalt`) VALUES
(1, 'migdał'),
(2, 'zaokrąglony'),
(3, 'kwadratowy'),
(4, 'balerina');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wzory`
--

CREATE TABLE `wzory` (
  `id` int(10) UNSIGNED NOT NULL,
  `wzor` varchar(10) DEFAULT NULL,
  `doplata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wzory`
--

INSERT INTO `wzory` (`id`, `wzor`, `doplata`) VALUES
(1, 'kwiat', NULL),
(2, 'kwiaty jas', NULL),
(3, 'kwiaty cie', NULL),
(4, 'kratka', NULL),
(5, 'koła', NULL),
(6, 'pajacyki', NULL),
(7, 'zdobienie1', NULL),
(8, 'zdobienie2', NULL),
(9, 'astro', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wzory_id` (`wzory_id`),
  ADD KEY `ksztalty_id` (`ksztalty_id`);

--
-- Indeksy dla tabeli `ksztalty`
--
ALTER TABLE `ksztalty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wzory`
--
ALTER TABLE `wzory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ksztalty`
--
ALTER TABLE `ksztalty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wzory`
--
ALTER TABLE `wzory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `klienci`
--
ALTER TABLE `klienci`
  ADD CONSTRAINT `klienci_ibfk_1` FOREIGN KEY (`wzory_id`) REFERENCES `wzory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `klienci_ibfk_2` FOREIGN KEY (`ksztalty_id`) REFERENCES `ksztalty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
