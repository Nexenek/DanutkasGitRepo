-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Mar 2023, 01:09
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
-- Baza danych: `dane2`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producenci`
--

CREATE TABLE `producenci` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `miasto` varchar(20) DEFAULT NULL,
  `rokWspolpraca` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `producenci`
--

INSERT INTO `producenci` (`id`, `nazwa`, `adres`, `miasto`, `rokWspolpraca`) VALUES
(4, 'warzywa-rolnik', '12', 'Jany', 1990),
(5, 'Owoce-rolnik', '23', 'Kosatka', 2010),
(6, 'Owoce4You', '2', 'Jany', 1990),
(7, 'Warzywa4You', '65', 'Krasznice', 2015),
(8, 'FruitFarm', '1', 'Jany', 2001),
(9, 'VideoFun', 'Cybernetyki 3', 'Warszawa', 2000),
(10, 'Video', 'Harcerska 3', 'Tychy', 2010),
(11, 'NaszeFilmy', '23 Kwietnia 44', 'Szczecin', 1990);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(10) UNSIGNED NOT NULL,
  `Rodzaje_id` int(10) UNSIGNED NOT NULL,
  `Producenci_id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `ilosc` double DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `cena` double DEFAULT NULL,
  `zdjecie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `Rodzaje_id`, `Producenci_id`, `nazwa`, `ilosc`, `opis`, `cena`, `zdjecie`) VALUES
(1, 1, 8, 'gruszka', 20, 'Klaps', 2.56, 'gruszka.jpg'),
(2, 1, 6, 'morela', 30, '', 5.78, 'morela.jpg'),
(3, 1, 8, 'arbuz', 2, 'czerwony', 2.56, 'arbuz.jpg'),
(4, 1, 5, 'papaja', 5, '', 6.99, 'papaja.jpg'),
(5, 2, 4, 'marchew', 100, '', 1.56, 'marchew.jpg'),
(6, 2, 7, 'ziemniak', 120, 'irys', 3.33, 'ziemniak.jpg'),
(7, 2, 7, 'koper', 2, 'natka', 1.56, 'koper.jpg'),
(8, 2, 4, 'papryka', 50, 'zielona', 10.99, 'papryka.jpg'),
(9, 12, 10, 'Star Wars 1', 1, 'Luke Skywalker i ksi??niczka Leia w walce z ciemn? stron? mocy', 25, 'star-wars.jpg'),
(10, 7, 9, 'Alien', 1, 'Za?oga statku kosmicznego Nostromo odbiera tajemniczy sygna? i l?duje na niewielkiej planetoidzie, gdzie jeden z jej cz?onków zostaje zaatakowany przez obc? form? ?ycia.', 20, 'alien.jpg'),
(11, 12, 10, 'E.T.', 1, 'Przybysz z innej planety zaprzyja?nia si? z ch?opcem i jego rodzin?.', 30, 'et.jpg'),
(12, 7, 9, 'Alien2', 1, 'Za?oga statku kosmicznego Nostromo odbiera tajemniczy sygna? i l?duje na niewielkiej planetoidzie, gdzie jeden z jej cz?onków zostaje zaatakowany przez obc? form? ?ycia.', 20, 'alien.jpg'),
(13, 12, 10, 'hobbit2', 1, 'Hobbit Bilbo Baggins wyrusza w niebezpieczn? podro?, by wraz z czarodziejem Gandalfem i trzynastoma krasnoludami pokona? smoka Smauga.', 30, 'hobbit.jpg'),
(14, 12, 10, 'Fantasy2', 1, 'Elfy, krasnoludy i inne fantastyczne itstoty w walce o swoj? planet?.', 10, 'fantasy.jpg'),
(15, 7, 9, 'Alien3', 1, 'Za?oga statku kosmicznego Nostromo odbiera tajemniczy sygna? i l?duje na niewielkiej planetoidzie, gdzie jeden z jej cz?onków zostaje zaatakowany przez obc? form? ?ycia.', 20, 'alien.jpg'),
(16, 12, 10, 'hobbit3', 1, 'Hobbit Bilbo Baggins wyrusza w niebezpieczn? podro?, by wraz z czarodziejem Gandalfem i trzynastoma krasnoludami pokona? smoka Smauga.', 30, 'hobbit.jpg'),
(17, 12, 10, 'Star Wars 2', 1, 'Luke Skywalker i ksi??niczka Leia w walce z ciemn? stron? mocy', 25, 'star-wars.jpg'),
(18, 7, 9, 'Alien4', 1, 'Za?oga statku kosmicznego Nostromo odbiera tajemniczy sygna? i l?duje na niewielkiej planetoidzie, gdzie jeden z jej cz?onków zostaje zaatakowany przez obc? form? ?ycia.', 20, 'alien.jpg'),
(19, 12, 10, 'Fantasy', 1, 'Elfy, krasnoludy i inne fantastyczne itstoty w walce o swoj? planet?.', 10, 'fantasy.jpg'),
(20, 12, 10, 'Star Wars 3', 1, 'Luke Skywalker i ksi??niczka Leia w walce z ciemn? stron? mocy', 25, 'star-wars.jpg'),
(21, 12, 10, 'hobbit', 1, 'Hobbit Bilbo Baggins wyrusza w niebezpieczn? podro?, by wraz z czarodziejem Gandalfem i trzynastoma krasnoludami pokona? smoka Smauga.', 30, 'hobbit.jpg'),
(22, 11, 11, 'Koralowa wyspa', 1, 'Hamprey Bogart w jednej ze swoich wielkich ról.', 10, 'koralowa_wyspa.jpg'),
(23, 13, 10, 'krokodyl', 1, 'Gigantyczny krokodyl atakuje pewne miasto.', 10, 'krokodyl.jpg'),
(24, 12, 10, 'Star Wars 4', 1, 'Luke Skywalker i ksi??niczka Leia w walce z ciemn? stron? mocy', 25, 'star-wars.jpg'),
(25, 12, 10, 'SteamPunk', 1, 'Wizja postapokaliptycznej planety', 15, 'steampunk.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `rodzaje`
--

INSERT INTO `rodzaje` (`id`, `nazwa`) VALUES
(1, 'owoce'),
(2, 'warzywa'),
(3, 'oleje'),
(4, 'soki'),
(5, 'sery'),
(6, 'slodycze'),
(7, 'horrory'),
(8, 'kryminalne'),
(9, 'komedie'),
(10, 'familijne'),
(11, 'obyczajowe'),
(12, 'fantastyczne'),
(13, 'przygodowe');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `producenci`
--
ALTER TABLE `producenci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `producenci`
--
ALTER TABLE `producenci`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
