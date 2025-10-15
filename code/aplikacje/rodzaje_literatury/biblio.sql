-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2025 at 05:54 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id` int(11) NOT NULL,
  `tytul` varchar(70) NOT NULL,
  `gatunek` varchar(10) NOT NULL DEFAULT 'liryka'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `ksiazka`
--

INSERT INTO `ksiazka` (`id`, `tytul`, `gatunek`) VALUES
(1, 'Pieśń nad pieśniami', 'liryka'),
(2, 'Iliada', 'epika'),
(3, 'Iliada', 'epika'),
(4, 'Antygona', 'dramat'),
(5, 'Bogurodzica', 'liryka'),
(6, 'Na dom w Czarnolesie', 'liryka'),
(7, 'Krzyżacy', 'epika'),
(8, 'Lalka', 'epika'),
(9, 'Latarnik', 'epika'),
(10, 'Stary człowiek i morze', 'epika'),
(11, 'Opowieść wigilijna', 'epika'),
(12, 'Zemsta', 'dramat'),
(13, 'Balladyna', 'dramat'),
(14, 'Pan Tadeusz', 'epika'),
(15, 'Antygona', 'dramat'),
(16, 'Makbet ', 'dramat'),
(17, 'Śluby panieńskie', 'dramat'),
(18, 'Czwarta siostra', 'dramat'),
(19, 'Sonety do Laury', 'liryka'),
(20, 'Treny', 'liryka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id_wyp` int(11) NOT NULL,
  `id_ks` int(11) NOT NULL,
  `id_cz` int(11) NOT NULL,
  `data_wyp` date NOT NULL,
  `data_odd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_wyp`, `id_ks`, `id_cz`, `data_wyp`, `data_odd`) VALUES
(1, 5, 7, '2020-04-17', '2020-05-09'),
(2, 18, 5, '2018-10-09', '2018-10-29'),
(3, 2, 1, '2020-10-22', '2020-10-27'),
(4, 2, 1, '2018-01-27', '2018-02-21'),
(5, 15, 9, '2018-09-05', '2018-09-25'),
(6, 10, 2, '2018-04-06', '2018-04-30'),
(7, 19, 7, '2020-03-08', '2020-04-06'),
(8, 2, 8, '2019-05-25', '2019-06-08'),
(9, 12, 2, '2018-06-03', '2018-06-15'),
(10, 20, 8, '2018-11-01', '2018-11-20'),
(11, 5, 5, '2020-11-25', '2020-12-23'),
(12, 11, 2, '2018-05-10', '2018-06-03'),
(13, 11, 8, '2019-10-25', '2019-10-30'),
(14, 18, 5, '2020-03-04', '2020-03-18'),
(15, 11, 1, '2020-07-06', '2020-07-29'),
(16, 19, 9, '2018-03-19', '2018-04-01'),
(17, 15, 2, '2020-04-07', '2020-05-04'),
(18, 19, 0, '2019-12-14', '2019-12-18'),
(19, 1, 1, '2018-01-17', '2018-01-17'),
(20, 7, 9, '2018-03-17', '2018-04-06'),
(21, 14, 8, '2018-11-21', '2018-11-28'),
(22, 13, 6, '2018-11-30', '2018-12-08'),
(23, 15, 4, '2019-11-25', '2019-12-14'),
(24, 10, 5, '2018-12-07', '2018-12-15'),
(25, 13, 7, '2019-11-15', '2019-12-01'),
(26, 16, 4, '2018-09-26', '2018-10-19'),
(27, 8, 3, '2018-12-21', '2018-12-31'),
(28, 1, 5, '2020-08-28', '2020-09-07'),
(29, 5, 3, '2019-08-18', '2019-09-05'),
(30, 5, 4, '2018-03-02', '2018-03-04'),
(31, 19, 4, '2019-10-12', '2019-10-25'),
(32, 5, 9, '2020-07-25', '2020-07-28'),
(33, 7, 8, '2019-08-29', '2019-09-02'),
(34, 14, 5, '2018-08-07', '2018-08-16'),
(35, 12, 6, '2018-12-05', '2018-12-12'),
(36, 3, 9, '2020-11-04', '2020-11-09'),
(37, 2, 2, '2020-09-10', '2020-09-14'),
(38, 2, 5, '2020-01-11', '2020-01-15'),
(39, 4, 6, '2020-01-20', '2020-01-30'),
(40, 4, 7, '2019-04-10', '2019-04-17'),
(41, 6, 5, '2018-03-16', '2018-03-20'),
(42, 3, 2, '2018-02-13', '2018-02-15'),
(43, 5, 3, '2020-11-24', '2020-12-21'),
(44, 10, 2, '2020-06-24', '2020-07-02'),
(45, 19, 4, '2018-10-15', '2018-11-01'),
(46, 6, 7, '2020-04-30', '2020-05-04'),
(47, 13, 1, '2018-07-15', '2018-08-13'),
(48, 1, 9, '2019-07-09', '2019-07-22'),
(49, 4, 4, '2018-02-26', '2018-03-04'),
(50, 3, 2, '2020-01-18', '2020-02-11'),
(51, 6, 6, '2019-01-13', '2019-01-22'),
(52, 17, 6, '2019-12-08', '2019-12-11'),
(53, 17, 8, '2018-10-01', '2018-10-19'),
(54, 15, 1, '2018-11-06', '2018-11-26'),
(55, 1, 1, '2020-01-01', '2020-01-16'),
(56, 3, 3, '2019-08-17', '2019-09-04'),
(57, 19, 6, '2020-02-18', '2020-03-03'),
(58, 4, 7, '2020-11-12', '2020-11-27');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id_wyp`),
  ADD KEY `id_cz` (`id_cz`),
  ADD KEY `id_ks` (`id_ks`),
  ADD KEY `id_ks_2` (`id_ks`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id_wyp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_ks`) REFERENCES `ksiazka` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
