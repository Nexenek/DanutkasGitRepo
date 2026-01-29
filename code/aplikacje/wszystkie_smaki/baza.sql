-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Mar 2023, 06:08
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `baza`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `id` int(10) UNSIGNED NOT NULL,
  `typ` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text DEFAULT NULL,
  `cena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `dania`
--

INSERT INTO `dania` (`id`, `typ`, `nazwa`, `cena`) VALUES
(1, 1, 'Gazpacho', 20),
(2, 1, 'Krem z warzyw', 25),
(3, 1, 'Gulaszowa ostra', 30),
(4, 2, 'Kaczka i owoc', 30),
(5, 2, 'Kurczak pieczony', 40),
(6, 2, 'wieprzowy przysmak', 35),
(7, 2, 'Mintaj w panierce', 30),
(8, 2, 'Alle kotlet', 30),
(9, 3, 'Owoce morza', 20),
(10, 3, 'Grzybki, warzywka, sos', 15),
(11, 3, 'Orzechy i chipsy', 10),
(12, 3, 'Tatar i jajo', 15),
(13, 3, 'Bukiet warzyw', 10),
(14, 4, 'Sok porzeczkowy', 3),
(15, 4, 'Cola', 3),
(16, 4, 'Woda', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokale`
--

CREATE TABLE `lokale` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL,
  `miasto` text DEFAULT NULL,
  `ulica` text DEFAULT NULL,
  `numer` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `lokale`
--

INSERT INTO `lokale` (`id`, `nazwa`, `miasto`, `ulica`, `numer`) VALUES
(1, 'Wszystkie Smaki', 'Zakopane', 'Orkana', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` text DEFAULT NULL,
  `nazwisko` text DEFAULT NULL,
  `stanowisko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `stanowisko`) VALUES
(1, 'Anna', 'Kowalska', 1),
(2, 'Monika', 'Nowak', 2),
(3, 'Ewelina', 'Nowakowska', 2),
(4, 'Anna', 'Przybylska', 4),
(5, 'Maria', 'Kowal', 4),
(6, 'Ewa', 'Nowacka', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nr_stolika` int(10) UNSIGNED DEFAULT NULL,
  `data_rez` date DEFAULT NULL,
  `liczba_osob` int(10) UNSIGNED DEFAULT NULL,
  `telefon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`id`, `nr_stolika`, `data_rez`, `liczba_osob`, `telefon`) VALUES
(1, 1, '2017-07-04', 4, '111222333');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lokale`
--
ALTER TABLE `lokale`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `lokale`
--
ALTER TABLE `lokale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
