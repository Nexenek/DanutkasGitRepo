-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Sty 2022, 20:00
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
-- Baza danych: `piekarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyroby`
--

CREATE TABLE `wyroby` (
  `ID` int(11) NOT NULL,
  `Rodzaj` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Gramatura` float NOT NULL,
  `Cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wyroby`
--

INSERT INTO `wyroby` (`ID`, `Rodzaj`, `Nazwa`, `Gramatura`, `Cena`) VALUES
(1, 'INNE', 'Bułka tarta', 0.5, 2),
(2, 'INNE', 'Pieczywo okolicznościowe np. \"Wiejski Stół\"', 1, 35),
(3, 'INNE', 'Paszteciki z kapustą i grzybami', 0.2, 4.65),
(4, 'PIECZYWO DLA GASTRONOMII', 'Bułka do Hamburgera', 0.12, 1.8),
(5, 'PIECZYWO DLA GASTRONOMII', 'Bułka do HotDoga', 0.1, 2.8),
(6, 'PIECZYWO DLA GASTRONOMII', 'Bułka do zapiekanki 30cm', 0.2, 3.8),
(7, 'PIECZYWO DLA GASTRONOMII', 'Bułka do zapiekanki 40cm', 0.25, 4.8),
(8, 'PIECZYWO DLA GASTRONOMII', 'Bułka do zapiekanki 50cm', 0.3, 5.8),
(9, 'PIECZYWO MIESZANE', 'Chleb baltonowski', 0.6, 3.45),
(10, 'PIECZYWO MIESZANE', 'Chleb duży wiejski', 1, 5.05),
(11, 'PIECZYWO MIESZANE', 'Chleb baltonowski krojony', 0.6, 3.45),
(12, 'PIECZYWO MIESZANE', 'Chleb z soją i słonecznikiem', 0.5, 3.05),
(13, 'PIECZYWO MIESZANE', 'Chleb wieloziarnisty \"Słońce\"', 0.4, 2.65),
(14, 'PIECZYWO MIESZANE', 'Chleb razowy 4 ziarna', 0.5, 3.05),
(15, 'PIECZYWO MIESZANE', 'Chleb mieszany 4 ziarna', 0.6, 3.45),
(16, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb oliwski', 0.5, 3.05),
(17, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb oliwski krojony', 0.5, 3.05),
(18, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb oliwski foremkowy', 0.5, 3.05),
(19, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb wiejski', 0.6, 3.45),
(20, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb wiejski duży', 1, 5.05),
(21, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb rozmaitości', 0.5, 3.05),
(22, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb oliwski z makiem', 0.5, 3.05),
(23, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb oliwski z sezamem', 0.5, 3.05),
(24, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb litewski', 0.5, 3.05),
(25, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Chleb marmurkowy', 0.5, 3.05),
(26, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Bułka razowa', 0.1, 1.45),
(27, 'PIECZYWO MIESZANE (PSZENNO-ŻYTNIE)', 'Bułka obfitości', 0.5, 3.05),
(28, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Bułka nadziewana i Pączek', 0.08, 1.37),
(29, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Bułka turecka \"Żulik\"', 0.2, 1.85),
(30, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Rogalik ECO z serem i oregano', 0.07, 1.33),
(31, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Bulka PIZZA', 0.1, 1.45),
(32, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Rogalik z kapustą i grzybami', 0.12, 1.53),
(33, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Zapiekanka z pieczarkami i serem', 0.12, 1.53),
(34, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Bułka włoska CIABATTA', 0.06, 1.29),
(35, 'PIECZYWO PÓŁCUKIERNICZE I FIRMOWE', 'Chleb ORKISZOWY', 0.3, 2.25),
(36, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Chleb pszenny', 0.4, 2.65),
(37, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka mini', 0.03, 1.17),
(38, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka paryska', 0.4, 2.65),
(39, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka szwedka', 0.05, 1.25),
(40, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka wrocławska', 0.05, 1.25),
(41, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka kajzerka', 0.05, 1.25),
(42, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka z serem', 0.1, 1.45),
(43, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bułka rozmaitości', 0.1, 1.45),
(44, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bagietka mała', 0.15, 1.65),
(45, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Bagietka duża', 0.25, 2.05),
(46, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Rogal duży', 0.4, 2.65),
(47, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Rogal zwykły', 0.1, 1.45),
(48, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Rogal maślany', 0.1, 1.45),
(49, 'PIECZYWO PSZENNE (BUŁKOWE)', 'Solanka', 0.1, 1.45),
(50, 'PIECZYWO PSZENNE (CHLEBOWE)', 'Chleb graham', 0.5, 3.05),
(51, 'PIECZYWO PSZENNE (CHLEBOWE)', 'Bułka grahamka', 0.1, 1.45),
(52, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Bułka wrocławska', 0.4, 2.65),
(53, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Bułka z przedziałkiem', 0.09, 1.41),
(54, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Bułka \"Kajzerka\"', 0.05, 1.25),
(55, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Bułka grahamka duża', 0.09, 1.41),
(56, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Bułka grahamka mała', 0.05, 1.25),
(57, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Chałka duża', 0.5, 4.05),
(58, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Chałka mała', 0.25, 3.05),
(59, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Rogal maślany', 0.09, 2.41),
(60, 'PIECZYWO PSZENNE WYBOROWE I MAŚLANE', 'Chleb tostowy', 0.35, 3.45),
(61, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Chałka pleciona', 0.3, 3.25),
(62, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Chałka foremkowa', 0.3, 3.25),
(63, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Bułka maślana z makiem', 0.09, 2.41),
(64, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Bułka maślana z kruszonką', 0.09, 2.41),
(65, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Plecionka maślana', 0.09, 2.41),
(66, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Paluch maślany', 0.09, 2.41),
(67, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Drożdżówka z kruszonką', 0.1, 2.45),
(68, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Drożdżówka z makiem', 0.1, 2.45),
(69, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Drożdżówka z serem', 0.1, 2.45),
(70, 'PIECZYWO WYBOROWE I PÓŁCUKIERNICZE', 'Drożdżówka ósemka', 0.1, 2.45),
(71, 'PIECZYWO ŻYTNIE', 'Chleb razowy', 0.5, 4.05),
(72, 'PIECZYWO ŻYTNIE', 'Chleb wiejski żytni duży', 2, 21),
(73, 'PIECZYWO ŻYTNIE', 'Chleb wiejski żytni średni', 1, 12),
(74, 'PIECZYWO ŻYTNIE', 'Chleb razowy', 0.5, 4.05),
(75, 'PIECZYWO ŻYTNIE', 'Chleb razowy turystyczny', 0.5, 4.05),
(76, 'PIECZYWO ŻYTNIE', 'Chleb razowy słonecznikowy', 0.5, 4.05),
(77, 'PIECZYWO ŻYTNIE', 'Chleb razowy ze śliwką', 0.5, 4.05),
(78, 'PIECZYWO ŻYTNIE', 'Chleb razowy na miodzie', 0.5, 4.05),
(79, 'PIECZYWO ŻYTNIE', 'Chleb razowy z rodzynkami', 0.5, 4.05),
(80, 'PIECZYWO ŻYTNIE', 'Chleb fiński', 0.5, 4.05),
(81, 'PIECZYWO ŻYTNIE', 'Chleb żytni mały', 0.5, 4.05),
(82, 'PIECZYWO ŻYTNIE', 'Chleb żytni duży', 0.5, 4.05),
(83, 'PIECZYWO ŻYTNIE', 'Chleb żytni z pestką dyni', 0.5, 4.05),
(84, 'PIECZYWO ŻYTNIE', 'Chleb żytni ze słonecznikiem', 0.5, 4.05),
(85, 'PIECZYWO ŻYTNIE', 'Chleb żytni z cebulą', 0.5, 4.05),
(86, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek', 0.1, 2.45),
(87, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek z jabłkiem', 0.1, 2.45),
(88, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek z toffi', 0.1, 2.45),
(89, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek z adwokatem', 0.1, 2.45),
(90, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Ciastko francuskie', 0.1, 2.45),
(91, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Ciastko półfrancuskie', 0.1, 2.45),
(92, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek', 0.1, 2.45),
(93, 'WYROBY CUKIERNICZE I CIASTKARSKIE', 'Pączek', 0.1, 2.45);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wyroby`
--
ALTER TABLE `wyroby`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `wyroby`
--
ALTER TABLE `wyroby`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
