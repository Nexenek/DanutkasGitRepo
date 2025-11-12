-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Lip 2021, 19:10
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
-- Baza danych: `firma`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sluchacze`
--

CREATE TABLE `sluchacze` (
  `Id` int(11) NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Data_ur` date NOT NULL,
  `Plec` char(1) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sluchacze`
--

INSERT INTO `sluchacze` (`Id`, `Nazwisko`, `Imie`, `Data_ur`, `Plec`) VALUES
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
(17, 'Zebzda', 'Adam', '2010-12-07', 'm'),
(18, 'Tutka', 'Robert', '2001-07-05', 'm'),
(19, 'Michalski', 'Grzegorz', '2003-09-01', 'm'),
(20, 'Gil', 'Krzysztof', '2000-04-19', 'm'),
(21, 'Chlebuś', 'Wiktoria', '2002-02-02', 'k'),
(22, 'Bieszczad', 'Magdalena', '2005-03-13', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkolenia`
--

CREATE TABLE `szkolenia` (
  `Id` int(11) NOT NULL,
  `Id_trenera` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Temat` varchar(100) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `szkolenia`
--

INSERT INTO `szkolenia` (`Id`, `Id_trenera`, `Data`, `Temat`) VALUES
(1, 2, '2021-09-20', 'Podstawy języka C++'),
(2, 1, '2021-10-01', 'Podstawy języka Python'),
(3, 3, '2021-09-30', 'Photoshop dla zaawansowanych'),
(4, 4, '2021-10-07', 'Aplikacje Webowe'),
(5, 1, '2021-10-15', 'Python dla zaawansowanych'),
(6, 5, '2021-10-02', 'Systemy operacyjne'),
(7, 6, '2021-10-21', 'Techologia druku 3D'),
(8, 3, '2021-11-10', 'Animacje komputerowe'),
(9, 2, '2021-12-10', 'C++ dla zaawansowanych'),
(10, 6, '2021-12-15', 'Obsługa drukarek 3D'),
(11, 2, '2021-11-30', 'Programowanie obiektowe w C++'),
(12, 5, '2021-12-06', 'Windows Serwer - usługi'),
(13, 5, '2021-11-15', 'Administracja systemem Linux'),
(14, 4, '2021-11-28', 'HTML i CSS dla zaawansowanych'),
(15, 3, '2021-12-16', 'Obsługa programu GIMP'),
(16, 4, '2021-10-22', 'PHP - poziom podstawowy'),
(17, 4, '2021-11-21', 'PHP - poziom średniozaawansowany'),
(18, 4, '2021-12-07', 'PHP - poziom zaawansowany');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trenerzy`
--

CREATE TABLE `trenerzy` (
  `Id` int(11) NOT NULL,
  `Nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `Imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Data_ur` date NOT NULL,
  `Plec` char(1) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `trenerzy`
--

INSERT INTO `trenerzy` (`Id`, `Nazwisko`, `Imie`, `Data_ur`, `Plec`) VALUES
(1, 'Duda', 'Tomasz', '0000-00-00', 'm'),
(2, 'Kossakowski', 'Mateusz', '1990-09-14', 'm'),
(3, 'Ptak', 'Nikodem', '1984-12-10', 'm'),
(4, 'Przepiórkowska', 'Maria', '1979-04-29', 'k'),
(5, 'Królik', 'Sebastian', '1991-04-03', 'm'),
(6, 'Stopyra', 'Kinga', '1986-06-06', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapisy`
--

CREATE TABLE `zapisy` (
  `Id` int(11) NOT NULL,
  `Id_szkolenia` int(11) NOT NULL,
  `Id_klienta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zapisy`
--

INSERT INTO `zapisy` (`Id`, `Id_szkolenia`, `Id_klienta`) VALUES
(1, 4, 1),
(2, 4, 3),
(3, 4, 4),
(4, 4, 5),
(5, 4, 7),
(6, 2, 13),
(7, 5, 9),
(8, 6, 2),
(9, 7, 6),
(10, 2, 22),
(11, 4, 10),
(12, 5, 14),
(13, 6, 8),
(14, 8, 17),
(15, 7, 12),
(16, 6, 11),
(17, 4, 16),
(18, 6, 15),
(19, 7, 19),
(20, 7, 21),
(21, 6, 18),
(22, 4, 20),
(23, 4, 13),
(24, 6, 1),
(25, 7, 14),
(26, 4, 14),
(27, 6, 9),
(28, 6, 4),
(29, 8, 22),
(30, 6, 7);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `sluchacze`
--
ALTER TABLE `sluchacze`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `szkolenia`
--
ALTER TABLE `szkolenia`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `trenerzy`
--
ALTER TABLE `trenerzy`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `zapisy`
--
ALTER TABLE `zapisy`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `sluchacze`
--
ALTER TABLE `sluchacze`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `szkolenia`
--
ALTER TABLE `szkolenia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `trenerzy`
--
ALTER TABLE `trenerzy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `zapisy`
--
ALTER TABLE `zapisy`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
