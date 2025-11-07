-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Maj 2020, 18:33
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `obuwie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `buty`
--

CREATE TABLE `buty` (
  `model` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `id_kat` int(3) NOT NULL,
  `nazwa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `cena` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `buty`
--

INSERT INTO `buty` (`model`, `id_kat`, `nazwa`, `cena`) VALUES
('O-23-45', 4, 'OBUWIE TRENINGOWE', 179.00),
('P-59-03', 1, 'PÓŁBUTY WIZYTOWE', 188.00),
('T-02-44', 2, 'TRZEWIKI SZNUROWANE', 399.00),
('T-03-32', 3, 'TRAMPKI SLIP ON', 77.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id_kat` int(3) NOT NULL,
  `nazwa_kat` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategorie`
--

INSERT INTO `kategorie` (`id_kat`, `nazwa_kat`) VALUES
(1, 'Półbuty'),
(2, 'Trzewiki'),
(3, 'Trampki'),
(4, 'Obuwie sportowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE `produkt` (
  `kod_produktu` int(6) NOT NULL,
  `model` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `kolor` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `material` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `wysokosc_buta` float(3,1) NOT NULL,
  `nazwa_pliku` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`kod_produktu`, `model`, `kolor`, `material`, `wysokosc_buta`, `nazwa_pliku`) VALUES
(419069, 'P-59-03', 'czarny', 'skóra naturalna', 9.5, 'but1.png'),
(424454, 'T-02-44', 'brązowy', 'skóra naturalna - zamsz', 12.5, 'but2.png'),
(675567, 'T-03-32', 'granatowy', 'materał tekstylny', 9.5, 'but3.png'),
(765478, 'O-23-45', 'szary', 'skóra ekologiczna', 11.0, 'but4.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `buty`
--
ALTER TABLE `buty`
  ADD PRIMARY KEY (`model`),
  ADD UNIQUE KEY `id_kat` (`id_kat`) USING BTREE;

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeksy dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`kod_produktu`),
  ADD UNIQUE KEY `model` (`model`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id_kat` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `produkt`
--
ALTER TABLE `produkt`
  MODIFY `kod_produktu` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765479;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `buty`
--
ALTER TABLE `buty`
  ADD CONSTRAINT `buty_ibfk_1` FOREIGN KEY (`id_kat`) REFERENCES `kategorie` (`id_kat`);

--
-- Ograniczenia dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD CONSTRAINT `produkt_ibfk_1` FOREIGN KEY (`model`) REFERENCES `buty` (`model`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
