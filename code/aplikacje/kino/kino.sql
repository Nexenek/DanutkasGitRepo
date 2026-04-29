-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2026 at 06:02 PM
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
-- Database: `kino`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aktorzy`
--

CREATE TABLE `aktorzy` (
  `id_aktora` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `ocena` tinyint(4) DEFAULT NULL,
  `plik_awatara` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aktorzy`
--

INSERT INTO `aktorzy` (`id_aktora`, `imie`, `nazwisko`, `ocena`, `plik_awatara`) VALUES
(1, 'Mathilde', 'Anaïs', 100, 'mathildeanais.jpeg'),
(2, 'Davide', 'Costaluca', 95, 'davidecostaluca.jpeg'),
(3, 'Lorenzo', 'Di Romano', 90, 'lorenzodiromano.jpeg'),
(4, 'Pablo', 'Gallo', 85, 'pablogallo.jpeg'),
(5, 'Matteo', 'Jiménez', 80, 'matteojimenez.jpeg'),
(6, 'Sobiesław', 'Kubiszyn', 75, 'sobieslawkubiszyn.jpeg'),
(7, 'Élodie', 'Laurent', 70, 'elodielaurent.jpeg'),
(8, 'Baptiste', 'Lemoine', 65, 'baptistelemoine.jpeg'),
(9, 'Jerzy', 'Pasek', 60, 'jerzypasek.jpeg'),
(10, 'Pinto', 'Teixeira', 55, 'pintoteixeira.jpeg'),
(11, 'Clara', 'Fontaine', 50, 'clarafontaine.jpeg'),
(12, 'Diego', 'Silva', 45, 'diegosilva.jpeg'),
(13, 'Marcelina', 'Nowak', 40, 'marcelinanowak.jpeg'),
(14, 'Jean', 'Dubois', 35, 'jeandubois.jpeg'),
(15, 'Antoni', 'Kruk', 30, 'antonikruk.jpeg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id_filmu` int(11) NOT NULL,
  `tytul` varchar(255) DEFAULT NULL,
  `rok_produkcji` year(4) DEFAULT NULL,
  `czas_trwania` tinyint(3) DEFAULT NULL,
  `rezyser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id_filmu`, `tytul`, `rok_produkcji`, `czas_trwania`, `rezyser`) VALUES
(1, 'Tajemnica Przeszłości', '2015', 120, 'Jan Kowalski'),
(2, 'Szybki lot', '2021', 95, 'Anna Nowak'),
(3, 'Cienie w nocy', '2018', 115, 'Marek Wiśniewski'),
(4, 'Komedia omyłek', '2020', 85, 'Piotr Zieliński'),
(5, 'Złoty wiek', '2023', 127, 'Katarzyna Lewandowska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy_aktorzy`
--

CREATE TABLE `filmy_aktorzy` (
  `id_aktora` int(11) NOT NULL,
  `id_filmu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filmy_aktorzy`
--

INSERT INTO `filmy_aktorzy` (`id_aktora`, `id_filmu`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 3),
(3, 5),
(4, 2),
(5, 2),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 1),
(12, 2),
(13, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `aktorzy`
--
ALTER TABLE `aktorzy`
  ADD PRIMARY KEY (`id_aktora`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id_filmu`);

--
-- Indeksy dla tabeli `filmy_aktorzy`
--
ALTER TABLE `filmy_aktorzy`
  ADD PRIMARY KEY (`id_aktora`,`id_filmu`),
  ADD KEY `id_filmu` (`id_filmu`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filmy_aktorzy`
--
ALTER TABLE `filmy_aktorzy`
  ADD CONSTRAINT `filmy_aktorzy_ibfk_1` FOREIGN KEY (`id_aktora`) REFERENCES `aktorzy` (`id_aktora`),
  ADD CONSTRAINT `filmy_aktorzy_ibfk_2` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id_filmu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
