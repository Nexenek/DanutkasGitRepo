-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Gru 2024, 13:47
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
-- Baza danych: `baza1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontynenty`
--

CREATE TABLE `kontynenty` (
  `idKontynent` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kontynenty`
--

INSERT INTO `kontynenty` (`idKontynent`, `nazwa`) VALUES
(1, 'Azja'),
(2, 'Afryka'),
(3, 'Ameryka Północna'),
(4, 'Ameryka Południowa'),
(5, 'Antarktyda'),
(6, 'Europa'),
(7, 'Australia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obiekty`
--

CREATE TABLE `obiekty` (
  `idObiekt` int(10) UNSIGNED NOT NULL,
  `idKontynent` int(10) UNSIGNED NOT NULL,
  `idRodzaj` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `opis` text COLLATE utf8_polish_ci DEFAULT NULL,
  `plik` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwaCechy` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `wartoscCechy` int(10) UNSIGNED DEFAULT NULL,
  `panstwo` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `obiekty`
--

INSERT INTO `obiekty` (`idObiekt`, `idKontynent`, `idRodzaj`, `nazwa`, `opis`, `plik`, `nazwaCechy`, `wartoscCechy`, `panstwo`) VALUES
(28, 1, 13, 'Fuji', 'czynny stratowulkan i zarazem najwyższy szczyt Japonii. Leży na wyspie Honsiu.', '', 'wysokość', 3776, 'Japonia'),
(29, 1, 10, 'Kadamaian', '', '', 'wysokość', 700, 'Malezja'),
(30, 1, 11, 'Mount Everest', 'Najwyższy szczyt Świata', '', 'wysokość', 8849, 'Nepal'),
(31, 1, 11, 'K2', '', '', 'wysokość', 8611, 'Pakistan'),
(32, 1, 17, 'Teng Long Dong', '', '', 'długość', 53, 'Chiny'),
(33, 1, 17, 'Houay Sai', '', '', 'długość', 42, 'Laos'),
(34, 2, 11, 'Kilimanjaro', '', '', 'wysokość', 5895, 'Tanzania'),
(35, 2, 12, 'Wiktorii', '', '', 'powierzchnia', 69, 'Tanzania'),
(37, 2, 16, 'Nakuru', '', '', 'powierzchnia', 184, 'Nairobi'),
(38, 2, 10, 'Wiktorii', '', '', 'wysokość', 108, 'Tanzania'),
(39, 2, 10, 'Ouzoud', '', '', 'wysokość', 110, 'Maroko'),
(41, 3, 10, 'Yosemite', '', '', 'wysokość', 730, 'USA'),
(42, 6, 10, 'Kamieńczyk', '', 'kamienczyk.jpg', 'wysokość', 24, 'Polska'),
(43, 6, 10, 'Mała Siklawa', '', 'siklawica.jpg', 'wysokość', 23, 'Polska'),
(44, 6, 10, 'Wielka Siklawa', '', 'siklawa.jpg', 'wysokość', 70, 'Polska'),
(45, 6, 10, 'Wilczki', '', 'wilczki.jpg', 'wysokość', 22, 'Polska'),
(46, 6, 15, 'Strokkur', 'największy czynny gejzer Islandii. Wybucha co 5-10 minut. Wyrzuca słup wody o średnicy 3 m na wysokość 30 m.', 'Strokkur.jpg', 'wysokość', 30, 'Islandia'),
(47, 6, 10, 'Skogafoss', 'Wodospad położony jest na klifach dawnego wybrzeża. Osiąga wysokość 60 m i szerokość do 25 m. Ze względu na dużą ilość rozpylanej wody w słoneczne dni przy wodospadzie często powstaje tęcza.', 'Skogafoss.jpg', 'wysokość', 60, 'Islandia'),
(48, 6, 10, 'Seljalandsfoss', 'wodospad w południowej Islandii na rzece Seljalandsá, która swój początek bierze z lodowca Eyjafjallajökull. Położony jest na klifach dawnego wybrzeża. Seljalandsfoss osiąga wysokość 60 m i maksymalną szerokość 15 m. Za kaskadą wodospadu znajduje się obszerna jaskinia, do której można dostać się specjalną ścieżką.', 'Seljalandsfoss.jpg', 'wysokość', 60, 'Islandia'),
(49, 6, 14, 'Fuglaskoðunarhús', 'Siedlisko maskonura na wyspie Heymaey. Maskonury: gatunek średniej wielkości ptaka wodnego z rodziny alk (Alcidae). Zamieszkuje wyspy, wybrzeża i wody północnego i środkowego Atlantyku oraz przyległych rejonów Oceanu Arktycznego. Mimo licznej populacji uznawany jest za gatunek narażony na wyginięcie.', 'maskonur.jpg', 'populacja w milionach', 12, 'Islandia'),
(50, 6, 11, 'kirkjuffell', 'Góra znajdująca się na zachodnim wybrzeżu Islandii, na półwyspie Snæfellsnes, W pobliżu znajduje się miasteczko Grundarfjörður. Rozpoznawalna dzięki swojemu stożkowatemu kształtowi i dużej stromości. Przez miejscowych jest uważana za najpiękniejszy szczyt półwyspu Snæfellsnes. Góra często pojawia się na kartkach pocztowych z Islandii. Przed nadaniem obecnej nazwy, okoliczni mieszkańcy nazywali ją Firðafjall (Góra Zatoki).', 'kirkjuffel.jpg', 'wysokość', 463, 'Islandia'),
(51, 6, 14, 'Siedlisko wielorybów', 'Húsavík (pl. zatoka domów) – rybackie miasto położone na północnym wybrzeżu Islandii (wschodni brzeg zatoki Skjálfandi), w gminie Norðurþing, w historycznym okręgu Suður-Þingeyjarsýsla, w regionie Norðurland eystra. W 2018 r. zamieszkiwało je 2323 osób.', 'husavik.jpg', 'populacja w tysiącach', 80, 'Islandia'),
(52, 6, 13, 'Hekla', 'Wulkan w południowo-zachodniej Islandii, położony 115 km na wschód od stolicy kraju, Reykjavíku. Najwyższy czynny wulkan wyspy (1491 m n.p.m.), należy też do najbardziej aktywnych.', 'hekla.jpg', 'wysokość', 1491, 'Islandia'),
(53, 6, 10, 'Godafoss', 'wodospad znajdujący się na północy Islandii w jej środkowej części, na południe od drogi N1, na początku drogi do Sprengisandur i w odległości 40 km od Akureyri. Wody rzeki Skjálfandafljót o długości 178 km odprowadzającej wody lodowcowe spadają z wysokości 12 m na szerokości 30 m.', 'godafoss.jpg', 'wysokość', 30, 'Islandia'),
(54, 6, 10, 'Dettifoss', 'Wodospad w północno-wschodniej Islandii i przez kombinację objętości przepływu, szerokość i wysokość, jeden z najbogatszych w energię wodospadów Europy', 'dettifoss.jpg', 'przepustowość metry sześcienne', 193, 'Islandia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osiagniecia`
--

CREATE TABLE `osiagniecia` (
  `idOsiagniecie` int(10) UNSIGNED NOT NULL,
  `idObiekt` int(10) UNSIGNED NOT NULL,
  `idTurysta` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `idRodzaj` int(10) UNSIGNED NOT NULL,
  `rodzaj` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rodzaje`
--

INSERT INTO `rodzaje` (`idRodzaj`, `rodzaj`) VALUES
(10, 'wodospad'),
(11, 'szczyt'),
(12, 'jezioro'),
(13, 'wulkan'),
(14, 'siedlisko zwierząt'),
(15, 'gorące źródło'),
(16, 'park narodowy'),
(17, 'jaskinia'),
(18, 'rzeka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `turysci`
--

CREATE TABLE `turysci` (
  `idTurysta` int(10) UNSIGNED NOT NULL,
  `nick` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `turysci`
--

INSERT INTO `turysci` (`idTurysta`, `nick`, `punkty`) VALUES
(1, 'Ewa', 23),
(2, 'Monika', 4),
(3, 'Janek', 12),
(4, 'Krzysiek', 5),
(5, 'Paula', 23),
(6, 'Ania', 7),
(7, 'Ela', 51),
(8, 'Piotrek', 21),
(9, 'Tomek', 46),
(10, 'Grzesiek', 45),
(11, 'Ola', 31),
(12, 'Jowita', 11),
(13, 'Adam', 11);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kontynenty`
--
ALTER TABLE `kontynenty`
  ADD PRIMARY KEY (`idKontynent`);

--
-- Indeksy dla tabeli `obiekty`
--
ALTER TABLE `obiekty`
  ADD PRIMARY KEY (`idObiekt`),
  ADD KEY `idRodzaj` (`idRodzaj`),
  ADD KEY `idKontynent` (`idKontynent`);

--
-- Indeksy dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  ADD PRIMARY KEY (`idOsiagniecie`),
  ADD KEY `idTurysta` (`idTurysta`),
  ADD KEY `idObiekt` (`idObiekt`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`idRodzaj`);

--
-- Indeksy dla tabeli `turysci`
--
ALTER TABLE `turysci`
  ADD PRIMARY KEY (`idTurysta`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kontynenty`
--
ALTER TABLE `kontynenty`
  MODIFY `idKontynent` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `obiekty`
--
ALTER TABLE `obiekty`
  MODIFY `idObiekt` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  MODIFY `idOsiagniecie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  MODIFY `idRodzaj` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `turysci`
--
ALTER TABLE `turysci`
  MODIFY `idTurysta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `obiekty`
--
ALTER TABLE `obiekty`
  ADD CONSTRAINT `obiekty_ibfk_1` FOREIGN KEY (`idRodzaj`) REFERENCES `rodzaje` (`idRodzaj`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `obiekty_ibfk_2` FOREIGN KEY (`idKontynent`) REFERENCES `kontynenty` (`idKontynent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  ADD CONSTRAINT `osiagniecia_ibfk_1` FOREIGN KEY (`idTurysta`) REFERENCES `turysci` (`idTurysta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `osiagniecia_ibfk_2` FOREIGN KEY (`idObiekt`) REFERENCES `obiekty` (`idObiekt`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
