-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Lut 2022, 11:52
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `notatki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notatki`
--

CREATE TABLE `notatki` (
  `id` int(10) UNSIGNED NOT NULL,
  `Osoby_id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `tresc` text DEFAULT NULL,
  `priorytet` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `notatki`
--

INSERT INTO `notatki` (`id`, `Osoby_id`, `nazwa`, `tresc`, `priorytet`) VALUES
(1, 1, 'Wyprowadzić psa', NULL, 5),
(2, 1, 'Gimnastyka', NULL, 1),
(3, 1, 'Spacer z kumplem', NULL, 5),
(4, 1, 'Odrabianie lekcji z ', NULL, 4),
(5, 2, 'Zakupy', NULL, 2),
(6, 2, 'Wyprowadzić psa', NULL, 4),
(7, 2, 'Projekt na geografię', NULL, 2),
(8, 3, 'Wyjazd na wakacje', NULL, 5),
(9, 3, 'Weterynarz Brutus', NULL, 5),
(10, 3, 'Kawiarnia', NULL, 3),
(11, 3, 'Kino', NULL, 2),
(12, 3, 'Lekarz', NULL, 5),
(13, 4, 'Odrabianie lekcji', NULL, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Krzysiek', 'Nowak'),
(2, 'Paula', 'Włodarska'),
(3, 'Ewelina', 'Konieczna'),
(4, 'Grześ', 'Kowalski');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `notatki`
--
ALTER TABLE `notatki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Notatki_FKIndex1` (`Osoby_id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `notatki`
--
ALTER TABLE `notatki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
