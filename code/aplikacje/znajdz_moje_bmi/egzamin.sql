-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Mar 2023, 15:14
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
-- Struktura tabeli dla tabeli `bmi`
--

CREATE TABLE `bmi` (
  `id` int(10) UNSIGNED NOT NULL,
  `wart_min` int(10) UNSIGNED DEFAULT NULL,
  `wart_max` int(10) UNSIGNED DEFAULT NULL,
  `informacja` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `bmi`
--

INSERT INTO `bmi` (`id`, `wart_min`, `wart_max`, `informacja`) VALUES
(1, 0, 18, 'niedowaga'),
(2, 19, 25, 'waga prawidlowa'),
(3, 26, 30, 'nadwaga'),
(4, 31, 100, 'otylosc');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wynik`
--

CREATE TABLE `wynik` (
  `id` int(10) UNSIGNED NOT NULL,
  `bmi_id` int(10) UNSIGNED NOT NULL,
  `data_pomiaru` date DEFAULT NULL,
  `wynik` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wynik`
--

INSERT INTO `wynik` (`id`, `bmi_id`, `data_pomiaru`, `wynik`) VALUES
(1, 2, '2020-05-24', 20),
(2, 1, '2020-05-20', 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bmi`
--
ALTER TABLE `bmi`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wynik`
--
ALTER TABLE `wynik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `bmi`
--
ALTER TABLE `bmi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wynik`
--
ALTER TABLE `wynik`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
