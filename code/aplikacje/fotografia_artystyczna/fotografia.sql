-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Sty 2022, 22:18
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fotografia`
--
CREATE DATABASE IF NOT EXISTS `fotografia` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `fotografia`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zam` int(10) UNSIGNED NOT NULL,
  `plik` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `liczba_odbitek` int(10) UNSIGNED NOT NULL,
  `nr_klienta` int(10) UNSIGNED NOT NULL,
  `rodzaj` char(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zam`, `plik`, `liczba_odbitek`, `nr_klienta`, `rodzaj`) VALUES
(1, 'a.jpg', 65, 2, 'błyszczący'),
(2, 'b.jpg', 343, 5, 'błyszczący'),
(3, 'c.jpg', 23, 2, 'matowy'),
(4, 'a.jpg', 123, 1, 'błyszczący'),
(5, 'c.jpg', 22, 2, 'matowy'),
(6, 'd.jpg', 43, 5, 'błyszczący'),
(7, 'f.jpg', 17, 8, 'matowy'),
(8, 'd.jpg', 43, 7, 'błyszczący'),
(9, 'd.jpg', 67, 6, 'matowy'),
(10, 'a.jpg', 33, 4, 'błyszczący'),
(11, 's.jpg', 223, 2, 'matowy'),
(12, 'g.jpg', 314, 3, 'błyszczący'),
(13, 'j.jpg', 20, 2, 'matowy'),
(14, 'b.jpg', 70, 2, 'błyszczący'),
(15, 'c.jpg', 23, 2, 'matowy'),
(16, 'a.jpg', 37, 5, 'błyszczący'),
(17, 'a.jpg', 21, 9, 'matowy'),
(18, 'a.jpg', 123, 1, 'błyszczący'),
(19, 'c.jpg', 22, 2, 'matowy'),
(20, 'd.jpg', 43, 5, 'błyszczący'),
(21, 'f.jpg', 17, 8, 'matowy'),
(22, 'd.jpg', 43, 7, 'błyszczący'),
(23, 'd.jpg', 67, 6, 'matowy'),
(24, 'a.jpg', 33, 4, 'błyszczący'),
(25, 's.jpg', 23, 2, 'matowy'),
(26, 'g.jpg', 314, 3, 'błyszczący'),
(27, 'j.jpg', 20, 2, 'matowy'),
(28, 'b.jpg', 70, 2, 'błyszczący'),
(29, 'c.jpg', 23, 2, 'matowy'),
(30, 'a.jpg', 37, 5, 'błyszczący'),
(31, 'a.jpg', 21, 9, 'matowy'),
(32, 'a.jpg', 13, 1, 'błyszczący'),
(33, 'c.jpg', 22, 3, 'matowy'),
(34, 'd.jpg', 42, 5, 'błyszczący'),
(35, 'f.jpg', 17, 8, 'matowy'),
(36, 'd.jpg', 43, 7, 'błyszczący'),
(37, 'd.jpg', 167, 6, 'matowy'),
(38, 'a.jpg', 33, 3, 'błyszczący'),
(39, 's.jpg', 223, 5, 'matowy'),
(40, 'g.jpg', 314, 6, 'błyszczący'),
(41, 'j.jpg', 20, 2, 'matowy'),
(42, 'b.jpg', 70, 2, 'błyszczący'),
(43, 'c.jpg', 263, 8, 'matowy'),
(44, 'a.jpg', 37, 9, 'błyszczący'),
(45, 'a.jpg', 21, 9, 'matowy'),
(46, 'a.jpg', 123, 1, 'błyszczący'),
(47, 'c.jpg', 22, 2, 'matowy'),
(48, 'd.jpg', 43, 5, 'błyszczący'),
(49, 'd.jpg', 43, 7, 'błyszczący'),
(50, 'd.jpg', 67, 6, 'matowy'),
(51, 'a.jpg', 33, 4, 'błyszczący'),
(52, 'g.jpg', 314, 3, 'błyszczący'),
(53, 'j.jpg', 20, 2, 'matowy'),
(54, 'b.jpg', 70, 2, 'błyszczący'),
(55, 'a.jpg', 37, 5, 'błyszczący'),
(56, 'a.jpg', 21, 9, 'matowy'),
(57, 'a.jpg', 123, 1, 'błyszczący'),
(58, 'd.jpg', 43, 5, 'błyszczący'),
(59, 'f.jpg', 17, 8, 'matowy'),
(60, 'd.jpg', 43, 7, 'błyszczący'),
(61, 'd.jpg', 67, 6, 'matowy'),
(62, 'g.jpg', 14, 3, 'błyszczący'),
(63, 'j.jpg', 20, 2, 'matowy'),
(64, 'b.jpg', 710, 2, 'błyszczący'),
(65, 'c.jpg', 23, 2, 'matowy'),
(66, 'a.jpg', 37, 5, 'błyszczący'),
(67, 'a.jpg', 26, 9, 'matowy'),
(68, 'a.jpg', 123, 1, 'błyszczący'),
(69, 'c.jpg', 22, 2, 'matowy'),
(70, 'd.jpg', 43, 5, 'błyszczący'),
(71, 'f.jpg', 17, 8, 'matowy'),
(72, 'a.jpg', 43, 7, 'błyszczący'),
(73, 'd.jpg', 67, 6, 'matowy'),
(74, 'a.jpg', 33, 4, 'błyszczący'),
(75, 's.jpg', 223, 2, 'matowy'),
(76, 'b.jpg', 314, 3, 'matowy'),
(77, 'j.jpg', 20, 2, 'matowy'),
(78, 'b.jpg', 70, 2, 'błyszczący'),
(79, 'c.jpg', 23, 2, 'błyszczący'),
(80, 'a.jpg', 37, 5, 'błyszczący'),
(81, 'a.jpg', 21, 9, 'matowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `rodzaj` char(10) COLLATE utf8_polish_ci NOT NULL DEFAULT 'błyszczący',
  `cena` decimal(10,2) NOT NULL DEFAULT 0.50,
  `wysokosc` int(5) NOT NULL DEFAULT 10,
  `szerokosc` int(5) NOT NULL DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`rodzaj`, `cena`, `wysokosc`, `szerokosc`) VALUES
('błyszczący', '0.50', 10, 15),
('matowy', '0.70', 10, 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`),
  ADD KEY `rodzaj` (`rodzaj`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`rodzaj`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`rodzaj`) REFERENCES `zdjecia` (`rodzaj`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
