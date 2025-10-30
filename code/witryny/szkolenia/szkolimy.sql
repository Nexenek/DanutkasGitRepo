-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lip 2021, 13:46
-- Wersja serwera: 5.6.26
-- Wersja PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `szkolenia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kursy`
--

CREATE TABLE IF NOT EXISTS `kursy` (
  `kod` int(11) NOT NULL,
  `nazwa` varchar(35) COLLATE utf8_polish_ci NOT NULL,
  `cena` decimal(10,0) NOT NULL,
  `max_liczba_miejsc` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kursy`
--

INSERT INTO `kursy` (`kod`, `nazwa`, `cena`, `max_liczba_miejsc`) VALUES
(1, 'język angielski', '1999', 20),
(2, 'język niemiecki', '1890', 20),
(3, 'informatyka', '2500', 10),
(4, 'florystyka', '1200', 20),
(5, 'gastronomia', '1000', 15),
(6, 'język francuski', '1350', 20),
(7, 'spawanie', '3200', 10),
(8, 'rysunek techniczny', '2100', 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kursy_uczestnicy`
--

CREATE TABLE IF NOT EXISTS `kursy_uczestnicy` (
  `kod_kursu` int(11) NOT NULL,
  `id_uczestnika` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kursy_uczestnicy`
--

INSERT INTO `kursy_uczestnicy` (`kod_kursu`, `id_uczestnika`, `data`) VALUES
(1, 1, '2021-02-15'),
(2, 1, '2020-06-08'),
(5, 1, '2020-07-01'),
(5, 1, '2021-07-01'),
(3, 2, '2020-07-24'),
(4, 4, '2020-06-07'),
(1, 5, '2021-03-12'),
(6, 6, '2021-03-14'),
(2, 7, '2020-07-30'),
(4, 7, '2021-02-16'),
(7, 7, '2021-03-08'),
(8, 7, '2021-07-04'),
(5, 9, '2021-10-08'),
(2, 10, '2021-04-20'),
(7, 10, '2020-01-05'),
(8, 12, '2020-07-06'),
(2, 13, '2020-07-02'),
(6, 13, '2020-01-23'),
(3, 14, '2020-08-07'),
(5, 14, '2021-03-23'),
(2, 15, '2021-07-04'),
(3, 16, '2021-04-21'),
(5, 16, '2020-09-25'),
(5, 16, '2021-07-28'),
(5, 18, '2021-03-14'),
(8, 18, '2021-03-21'),
(4, 19, '2020-02-16'),
(5, 19, '2021-06-26'),
(8, 19, '2020-07-17'),
(4, 23, '2021-02-17'),
(2, 24, '2021-07-04'),
(4, 24, '2021-09-13'),
(3, 25, '2021-05-09'),
(5, 25, '2020-07-21'),
(4, 26, '2021-03-14'),
(6, 26, '2020-01-28'),
(7, 26, '2021-04-23'),
(3, 27, '2021-06-03'),
(3, 27, '2021-08-17'),
(3, 27, '2021-10-21'),
(5, 27, '2020-12-25'),
(5, 27, '2021-07-12'),
(6, 27, '2020-10-28'),
(5, 28, '2021-03-22'),
(6, 28, '2021-06-04'),
(6, 29, '2021-05-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczestnicy`
--

CREATE TABLE IF NOT EXISTS `uczestnicy` (
  `id_uczestnika` int(11) NOT NULL,
  `imie` varchar(35) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(35) COLLATE utf8_polish_ci NOT NULL,
  `wiek` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczestnicy`
--

INSERT INTO `uczestnicy` (`id_uczestnika`, `imie`, `nazwisko`, `wiek`) VALUES
(1, 'Katarzyna', 'Nowak', 35),
(2, 'Anna', 'Kos', 58),
(3, 'Aleksander', 'Szewczyk', 58),
(4, 'Michał', 'Ptak', 22),
(5, 'Anna', 'Lis', 45),
(6, 'Miłosz', 'Kowalski', 19),
(7, 'Przemysław', 'Okaj', 44),
(8, 'Marcin', 'Marzec ', 22),
(9, 'Marek', 'Nowak', 41),
(10, 'Monika', 'Banas', 25),
(11, 'Katarzyna', 'Edyn', 20),
(12, 'Adam', 'Kaczorowski', 22),
(13, 'Maria', 'Kuza', 26),
(14, 'Stanisław', 'Jamróz', 35),
(15, 'Stanisław', 'Jamróz', 35),
(16, 'Irena', 'Lińska', 52),
(17, 'Tomasz', 'Praski', 22),
(18, 'Adam', 'Wnuk', 21),
(19, 'Martyna', 'Mruk', 31),
(20, 'Łukasz', 'Kuszczyk', 26),
(21, 'Tadeusz', 'Maliniak', 33),
(22, 'Martyna', 'Balwierz', 26),
(23, 'Natalia', 'Ortyka', 45),
(24, 'Michał', 'Dróżdż', 17),
(25, 'Barbara', 'Tadzik', 19),
(26, 'Klaudia', 'Trzeciak', 22),
(27, 'Mirosław', 'Złoty', 26),
(28, 'Dominika', 'Pikuła', 62),
(29, 'Kamil', 'Lis', 28);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `kursy`
--
ALTER TABLE `kursy`
  ADD PRIMARY KEY (`kod`);

--
-- Indexes for table `kursy_uczestnicy`
--
ALTER TABLE `kursy_uczestnicy`
  ADD PRIMARY KEY (`kod_kursu`,`id_uczestnika`,`data`),
  ADD KEY `id_uczestnika` (`id_uczestnika`);

--
-- Indexes for table `uczestnicy`
--
ALTER TABLE `uczestnicy`
  ADD PRIMARY KEY (`id_uczestnika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `kursy`
--
ALTER TABLE `kursy`
  MODIFY `kod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `uczestnicy`
--
ALTER TABLE `uczestnicy`
  MODIFY `id_uczestnika` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `kursy_uczestnicy`
--
ALTER TABLE `kursy_uczestnicy`
  ADD CONSTRAINT `kursy_uczestnicy_ibfk_1` FOREIGN KEY (`id_uczestnika`) REFERENCES `uczestnicy` (`id_uczestnika`),
  ADD CONSTRAINT `kursy_uczestnicy_ibfk_2` FOREIGN KEY (`kod_kursu`) REFERENCES `kursy` (`kod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
