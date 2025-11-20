-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Gru 2020, 18:16
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
-- Baza danych: `szachy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zawodnicy`
--

CREATE TABLE `zawodnicy` (
  `id_zawodnika` int(11) NOT NULL,
  `pseudonim` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `tytul` varchar(2) COLLATE utf8_polish_ci NOT NULL,
  `data_zdobycia` date DEFAULT NULL,
  `ranking` int(11) NOT NULL,
  `klasa` varchar(2) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zawodnicy`
--

INSERT INTO `zawodnicy` (`id_zawodnika`, `pseudonim`, `tytul`, `data_zdobycia`, `ranking`, `klasa`) VALUES
(1, 'Hiikar', 'SM', '2020-07-12', 2798, '4B'),
(2, 'Magmus', 'SM', '2020-06-15', 2882, '1C'),
(3, 'Bludolf', 'KM', '2020-06-30', 2830, '4C'),
(4, 'Botas Bross', 'KM', '2020-06-04', 2817, '3A'),
(5, 'AGDomator', '', NULL, 1813, '1A'),
(6, 'Hans', 'PM', '2020-03-27', 2811, '2B'),
(7, 'Eryka Róża', 'KM', '2019-11-30', 2810, '4C'),
(8, 'BananD', 'PM', '2020-07-25', 2817, '3A'),
(9, 'HarmoniaB', 'SM', '2020-08-23', 2888, '1A'),
(10, 'So What', 'SM', '2020-11-09', 2788, '4B'),
(11, 'Anyżeg', 'PM', '2020-11-06', 2787, '3B'),
(12, 'Boringof', 'SM', '2020-03-02', 2785, '2A'),
(13, 'JFKDudek', 'SM', '2019-11-27', 2780, '2B'),
(14, 'SzaMam', '', NULL, 2777, '2A'),
(15, 'MaxVac', '', NULL, 2775, '2A'),
(16, 'PioSwi', '', NULL, 2775, '4B'),
(17, 'LeiDom', '', NULL, 2769, '3B'),
(18, 'RusPon', 'OM', '2020-04-25', 2768, '1C'),
(19, 'PetLek', '', NULL, 2764, '2C'),
(20, 'GatKam', '', NULL, 2763, '2A'),
(21, 'PawElj', 'OM', '2020-12-23', 2763, '4B'),
(22, 'WugGas', '', NULL, 2761, '3A'),
(23, 'MicAda', '', NULL, 2761, '4B'),
(24, 'DmiJak', '', NULL, 2761, '1C'),
(25, 'WanYue', '', NULL, 2760, '4B'),
(26, 'AleSzy', 'OM', '2019-12-10', 2756, '4A'),
(27, 'DinLir', '', NULL, 2755, '3B'),
(28, 'WanHao', 'OM', '2020-07-25', 2755, '3B'),
(29, 'SieMow', '', NULL, 2752, '2B'),
(30, 'ÉtiBac', '', NULL, 2751, '3A'),
(31, 'NikWit', 'OM', '2020-12-16', 2749, '2A'),
(32, 'JewTom', '', NULL, 2747, '4B'),
(33, 'RadWoj', 'OM', '2019-10-16', 2745, '1A'),
(34, 'DavNav', 'OM', '2020-02-21', 2750, '3A'),
(35, 'JewBar', '', NULL, 2744, '4A'),
(36, 'ArkNai', '', NULL, 2739, '3B'),
(37, 'DmiAnd', '', NULL, 2737, '4A'),
(38, 'JudPol', '', NULL, 2737, '1A'),
(39, 'JanNie', 'OM', '2020-08-26', 2735, '3A'),
(40, 'WikBoł', 'OM', '2021-01-22', 2735, '4A'),
(41, 'BaaDżo', '', NULL, 2734, '3B'),
(42, 'WłaMał', '', NULL, 2734, '1A'),
(43, 'PenHar', 'OM', '2020-08-03', 2732, '1A'),
(44, 'Li Cha', '', NULL, 2731, '4A'),
(45, 'ZolAlm', '', NULL, 2730, '4C'),
(46, 'OłeMoi', '', NULL, 2726, '4A'),
(47, 'JewAle', '', NULL, 2726, '2C'),
(48, 'AndWoł', 'OM', '2020-04-11', 2725, '1C'),
(49, 'Ni Hua', 'OM', '2020-05-21', 2725, '2B'),
(50, 'FraVal', '', NULL, 2724, '3A'),
(51, 'Yu Yan', '', NULL, 2724, '1B'),
(52, 'AntKor', 'OM', '2020-11-11', 2724, '4A'),
(53, 'Bu Xia', '', NULL, 2723, '2A'),
(54, 'KriSas', 'OM', '2020-12-28', 2722, '4B'),
(55, 'AleRia', '', NULL, 2720, '4A'),
(56, 'OłeAre', 'OM', '2020-12-08', 2720, '4C'),
(57, 'RicRap', '', NULL, 2720, '1A'),
(58, 'LauFre', '', NULL, 2720, '3B'),
(59, 'Lê Qua', 'OM', '2020-10-28', 2718, '4B'),
(60, 'LázBru', '', NULL, 2717, '4A'),
(61, 'WalSał', '', NULL, 2717, '2A'),
(62, 'Loevan', '', NULL, 2715, '1A'),
(63, 'DenChi', '', NULL, 2714, '4A'),
(64, 'WlaHak', '', NULL, 2714, '2B'),
(65, 'IwaCze', 'OM', '2019-11-30', 2713, '1A'),
(66, 'LukMcS', '', NULL, 2713, '3A'),
(67, 'NigSho', '', '2019-11-15', 2713, '3A'),
(68, 'RusKas', '', NULL, 2712, '2B'),
(69, 'AleDri', '', NULL, 2712, '3B'),
(70, 'OłeBie', '', NULL, 2711, '2B'),
(71, 'AleMot', '', NULL, 2710, '4B'),
(72, 'JurKry', '', NULL, 2710, '2C'),
(73, 'ZacJef', '', NULL, 2710, '4A'),
(74, 'LivNis', '', NULL, 2708, '2C'),
(75, 'ErnIna', '', NULL, 2707, '2A'),
(76, 'IvaSok', '', NULL, 2707, '4B'),
(77, 'FerBer', '', '2019-09-26', 2706, '4A'),
(78, 'SieRub', '', NULL, 2706, '4C'),
(79, 'WeiYi', '', NULL, 2706, '2C'),
(80, 'MicTal', '', NULL, 2706, '1C'),
(81, 'WadMił', '', NULL, 2705, '2C'),
(82, 'BorGra', '', NULL, 2705, '1A'),
(83, 'VikLáz', '', NULL, 2705, '3C'),
(84, 'EmiSut', '', NULL, 2704, '4A'),
(85, 'MicKra', '', NULL, 2703, '4B'),
(86, 'IljSmi', '', NULL, 2702, '4C'),
(87, 'AleCha', '', NULL, 2702, '3B'),
(88, 'ZurAzm', '', NULL, 2702, '2B'),
(89, 'RomÉdo', '', NULL, 2702, '1A'),
(90, 'AleOni', '', NULL, 2702, '4A'),
(91, 'PetHei', '', NULL, 2701, '4B'),
(92, 'MakMat', '', NULL, 2700, '1B'),
(93, 'IgoŁys', '', '2020-09-04', 2700, '4A'),
(94, 'LiLa', 'AM', '2020-09-14', 2901, '2A');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zawodnicy`
--
ALTER TABLE `zawodnicy`
  ADD PRIMARY KEY (`id_zawodnika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `zawodnicy`
--
ALTER TABLE `zawodnicy`
  MODIFY `id_zawodnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
