-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Lip 03, 2024 at 11:25 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratorium`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Diagnosta`
--

CREATE TABLE `Diagnosta` (
  `id` int(11) NOT NULL,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(100) NOT NULL,
  `PWZDL` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Diagnosta`
--

INSERT INTO `Diagnosta` (`id`, `imie`, `nazwisko`, `PWZDL`) VALUES
(1, 'Beata', 'Wysocka', '19807'),
(2, 'Urszula', 'Lipko', '17407'),
(3, 'Marcin', 'Kowal', '34567'),
(4, 'Elżbieta', 'Nowacka', '45678'),
(5, 'Andrzej', 'Sikorski', '56789'),
(6, 'Magdalena', 'Lis', '67890'),
(7, 'Tomasz', 'Bielecki', '78901'),
(8, 'Dorota', 'Czarnecka', '89012'),
(9, 'Piotr', 'Krawczyk', '90123'),
(10, 'Anna', 'Zalewska', '01234');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Pacjent`
--

CREATE TABLE `Pacjent` (
  `id` int(11) NOT NULL,
  `pesel` char(11) DEFAULT NULL,
  `imie` varchar(100) NOT NULL,
  `nazwisko` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pacjent`
--

INSERT INTO `Pacjent` (`id`, `pesel`, `imie`, `nazwisko`) VALUES
(1, '88082022552', 'Mateusz', 'Nowicki'),
(2, '55052951125', 'Iwona', 'Kubicka'),
(3, '04312574747', 'Patrycja', 'Tulikowska'),
(4, '88062312345', 'Katarzyna', 'Wójcik'),
(5, '90041167890', 'Michał', 'Kowalczyk'),
(6, '99072054321', 'Agnieszka', 'Zielińska'),
(7, '76081412345', 'Tomasz', 'Szymański'),
(8, '80091267890', 'Ewa', 'Woźniak'),
(9, '95010154321', 'Paweł', 'Dąbrowski'),
(10, '97021312345', 'Magdalena', 'Kozłowska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Wynik`
--

CREATE TABLE `Wynik` (
  `id` int(11) NOT NULL,
  `plik` varchar(100) NOT NULL,
  `data` datetime NOT NULL,
  `idDiagnosty` int(11) NOT NULL,
  `idZlecenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Wynik`
--

INSERT INTO `Wynik` (`id`, `plik`, `data`, `idDiagnosty`, `idZlecenia`) VALUES
(1, 'nowicki.pdf', '2024-06-09 15:22:10', 1, 1),
(2, 'kubicka.pdf', '2024-06-09 15:22:10', 2, 3),
(3, 'tulikowska.pdf', '2024-06-09 15:22:10', 2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Zlecenie`
--

CREATE TABLE `Zlecenie` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `idPacjenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Zlecenie`
--

INSERT INTO `Zlecenie` (`id`, `data`, `idPacjenta`) VALUES
(1, '2024-06-08 10:00:00', 1),
(2, '2024-06-08 11:00:00', 1),
(3, '2024-06-08 09:30:00', 2),
(4, '2024-06-08 12:00:00', 3),
(5, '2024-06-07 14:30:00', 4),
(6, '2024-06-07 10:15:00', 5),
(7, '2024-06-06 09:00:00', 6),
(8, '2024-06-05 07:45:00', 7),
(9, '2024-06-05 14:15:00', 8),
(10, '2024-06-05 10:45:00', 9),
(11, '2024-06-19 12:45:00', 10),
(12, '2024-06-20 13:30:00', 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Diagnosta`
--
ALTER TABLE `Diagnosta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Pacjent`
--
ALTER TABLE `Pacjent`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `Wynik`
--
ALTER TABLE `Wynik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDiagnosty` (`idDiagnosty`),
  ADD KEY `idZlecenia` (`idZlecenia`);

--
-- Indeksy dla tabeli `Zlecenie`
--
ALTER TABLE `Zlecenie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPacjenta` (`idPacjenta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Diagnosta`
--
ALTER TABLE `Diagnosta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Pacjent`
--
ALTER TABLE `Pacjent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Wynik`
--
ALTER TABLE `Wynik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Zlecenie`
--
ALTER TABLE `Zlecenie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Wynik`
--
ALTER TABLE `Wynik`
  ADD CONSTRAINT `wynik_ibfk_1` FOREIGN KEY (`idDiagnosty`) REFERENCES `Diagnosta` (`id`),
  ADD CONSTRAINT `wynik_ibfk_2` FOREIGN KEY (`idZlecenia`) REFERENCES `Zlecenie` (`id`);

--
-- Constraints for table `Zlecenie`
--
ALTER TABLE `Zlecenie`
  ADD CONSTRAINT `zlecenie_ibfk_1` FOREIGN KEY (`idPacjenta`) REFERENCES `Pacjent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
