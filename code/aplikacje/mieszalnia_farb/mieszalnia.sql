-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Lis 2021, 15:41
-- Wersja serwera: 10.4.6-MariaDB
-- Wersja PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mieszalnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `Id` int(11) NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Data_ur` date NOT NULL,
  `Plec` char(1) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`Id`, `Nazwisko`, `Imie`, `Data_ur`, `Plec`) VALUES
(1, 'Kowalski', 'Jan', '1995-11-12', 'm'),
(2, 'Winiarski', 'Patryk', '2000-02-04', 'm'),
(3, 'Ozimek', 'Krzysztof', '1998-05-15', 'm'),
(4, 'Nowakowski', 'Karol', '1999-12-19', 'm'),
(5, 'Malinowski', 'Mariusz', '2000-03-30', 'm'),
(6, 'Klocek', 'Joanna', '1998-10-01', 'k'),
(7, 'Skalski', 'Robert', '2001-06-22', 'm'),
(8, 'Kowal', 'Tomasz', '2001-06-22', 'm'),
(9, 'Misiak', 'Katarzyna', '1997-08-02', 'k'),
(10, 'Olszowy', 'Grzegorz', '1996-05-16', 'm'),
(11, 'Raciborska', 'Karolina', '2008-03-02', 'k'),
(12, 'Krakowiak', 'Konrad', '2003-08-22', 'm'),
(13, 'Rozenek', 'Wiktoria', '2010-02-27', 'k'),
(14, 'Paluch', 'Tomasz', '2010-05-01', 'm'),
(15, 'Burek', 'Ilona', '2000-09-11', 'k'),
(16, 'Kotek', 'Patryk', '2004-11-09', 'm'),
(17, 'Zebzda', 'Adam', '2010-12-07', 'm');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `kod_koloru` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `data_odbioru` date NOT NULL,
  `pojemnosc` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `kod_koloru`, `data_odbioru`, `pojemnosc`, `id_klienta`) VALUES
(1, 'FFFFFF', '2021-11-07', 100, 3),
(2, '769944', '2021-10-12', 800, 1),
(3, '1b69aa', '2021-08-18', 800, 3),
(4, '11c153', '2021-09-19', 1000, 3),
(5, 'aa6a43', '2021-09-21', 500, 5),
(6, 'f6a133', '2021-08-24', 250, 8),
(7, '0fc3c5', '2021-11-06', 1000, 2),
(8, 'd8fafa', '2021-10-03', 800, 9),
(9, 'b7e284', '2021-10-09', 100, 11),
(10, '616ff9', '2021-12-12', 800, 17),
(11, 'c971f2', '2021-09-11', 100, 13),
(12, '3df557', '2021-11-10', 1000, 7),
(13, '707270', '2021-10-18', 800, 4),
(14, 'fb788b', '2021-10-24', 250, 8),
(15, 'e7ede5', '2021-08-26', 250, 6),
(16, '446784', '2021-08-21', 100, 14),
(17, 'ef5c03', '2021-09-18', 250, 12),
(18, 'b68e2e', '2021-09-13', 100, 9),
(19, '7139a1', '2021-08-19', 1000, 5),
(20, '1d9dff', '2021-11-21', 1000, 17),
(21, 'e43624', '2021-11-22', 500, 16),
(22, '2f2727', '2021-10-29', 1000, 11),
(23, '952f24', '2021-09-20', 250, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
