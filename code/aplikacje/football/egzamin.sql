-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Mar 2023, 11:48
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
-- Baza danych: `egzamin`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycja`
--

CREATE TABLE `pozycja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `pozycja`
--

INSERT INTO `pozycja` (`id`, `nazwa`) VALUES
(1, 'bramkarz'),
(2, 'obronca'),
(3, 'pomocnik'),
(4, 'napastnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozgrywka`
--

CREATE TABLE `rozgrywka` (
  `id` int(10) UNSIGNED NOT NULL,
  `zespol1` varchar(3) NOT NULL,
  `zespol2` varchar(3) DEFAULT NULL,
  `wynik` varchar(20) DEFAULT NULL,
  `data_rozgrywki` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `rozgrywka`
--

INSERT INTO `rozgrywka` (`id`, `zespol1`, `zespol2`, `wynik`, `data_rozgrywki`) VALUES
(1, 'EVG', 'FCB', '3:1', '2019-05-14'),
(2, 'EVG', 'FCB', '2:3', '2019-05-20'),
(3, 'RM', 'FCB', '2:2', '2019-05-11'),
(4, 'JUV', 'ARS', '3:1', '2019-05-12'),
(5, 'JUV', 'FCB', '2:3', '2019-05-17'),
(6, 'EVG', 'JUV', '3:0', '2019-05-13'),
(7, 'RM', 'JUV', '2:2', '2019-05-15'),
(8, 'EVG', 'RM', '2:0', '2019-05-16'),
(9, 'EVG', 'FCB', '1:1', '2019-05-22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawodnik`
--

CREATE TABLE `zawodnik` (
  `id` int(10) UNSIGNED NOT NULL,
  `pozycja_id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `zawodnik`
--

INSERT INTO `zawodnik` (`id`, `pozycja_id`, `imie`, `nazwisko`) VALUES
(1, 1, 'Wojciech', 'Szczesny'),
(2, 2, 'Rafal', 'Pietrzak'),
(3, 2, 'Jan', 'Bednarek'),
(4, 3, 'Grzegorz', 'Krychowiak'),
(5, 3, 'Kamil', 'Grosicki'),
(6, 4, 'Arkadiusz', 'Milik'),
(7, 4, 'Adam', 'Buksa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rozgrywka`
--
ALTER TABLE `rozgrywka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zawodnik`
--
ALTER TABLE `zawodnik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pozycja`
--
ALTER TABLE `pozycja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `rozgrywka`
--
ALTER TABLE `rozgrywka`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `zawodnik`
--
ALTER TABLE `zawodnik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
