-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Lut 2020, 08:00
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `przewozy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id_osoba` int(11) NOT NULL,
  `imie` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `telefon` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id_osoba`, `imie`, `nazwisko`, `telefon`) VALUES
(1, 'Anna', 'A.', 987654321),
(2, 'Zofia', 'W.', 777777777),
(3, 'Arkadiusz', 'G.', 888888888),
(4, 'Tomasz', 'K.', 111111111),
(5, 'Grzegorz', 'C.', 222222222),
(6, 'Edyta', 'L.', 123456789);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zadania`
--

CREATE TABLE `zadania` (
  `id_zadania` int(11) NOT NULL,
  `zadanie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `osoba_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zadania`
--

INSERT INTO `zadania` (`id_zadania`, `zadanie`, `data`, `osoba_id`) VALUES
(1, 'Przewóz mebli z ulicy Nawrot 13 na ulicę Długą 8', '2019-11-06', 1),
(2, 'Przewóz telewizora z ulicy Marszałkowskiej na ulicę Poselską.', '2019-11-17', 2),
(3, 'Odbiór listów firmowych.', '2019-11-18', 2),
(4, 'Przegląd samochodu dostawczego w serwisie.', '2020-11-20', 1),
(5, 'Przewóz pudeł z osiedla Nowe Sady do firmy.', '2020-11-22', 3),
(6, 'Odbiór towarów niesortowanych.', '2020-11-23', 3),
(7, 'Przewóz mebli z ulicy Długiej 7 na ulicę Krótką 13', '2021-01-26', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id_osoba`);

--
-- Indeksy dla tabeli `zadania`
--
ALTER TABLE `zadania`
  ADD PRIMARY KEY (`id_zadania`),
  ADD KEY `osoba_id` (`osoba_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id_osoba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `zadania`
--
ALTER TABLE `zadania`
  MODIFY `id_zadania` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zadania`
--
ALTER TABLE `zadania`
  ADD CONSTRAINT `zadania_ibfk_1` FOREIGN KEY (`osoba_id`) REFERENCES `osoby` (`id_osoba`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
