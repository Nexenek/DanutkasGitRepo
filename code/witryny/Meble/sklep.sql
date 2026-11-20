-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Sty 2025, 10:05
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
-- Baza danych: `antyki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idKlienci` int(10) UNSIGNED NOT NULL,
  `imie` varchar(10) DEFAULT NULL,
  `nazwisko` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`idKlienci`, `imie`, `nazwisko`) VALUES
(1, 'Anna', 'Kowalska'),
(2, 'Tomasz', 'Nowak'),
(3, 'Julita', 'Nowakowska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `meble`
--

CREATE TABLE `meble` (
  `idMeble` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `plik` varchar(100) NOT NULL,
  `kategoria` int(11) NOT NULL,
  `czyNowy` tinyint(1) DEFAULT NULL,
  `styl` varchar(10) DEFAULT NULL,
  `cena` decimal(10,0) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `meble`
--

INSERT INTO `meble` (`idMeble`, `nazwa`, `plik`, `kategoria`, `czyNowy`, `styl`, `cena`, `opis`) VALUES
(1, 'Brązowa sofa', 's1.png', 1, 1, 'glamour', '1000', 'Piękna kanapa obita brązową skórą. Stelaż dębowy. Pięknie się prezentuje w klasycznych wnętrzach.'),
(2, 'Sofa 2-osobowa', 's2.png', 1, 0, 'rustykalny', '1200', 'Kanapa w stylu rustykalnym dla dwóch osób. Ręcznie wyszywana. Polecamy do wnętrz jasnych, rustykalnych. Jest bardzo przytulna.'),
(3, 'Ozdobna sofa', 's3.png', 1, 0, 'vintage', '2000', 'Barokowa sofa będzie zdobić klasyczne wnętrze. Czarna z metalowym ozdobnym stelażem.'),
(4, 'Mała komoda 1', 'k1.png', 3, 0, 'klasyczny', '2500', 'Klasyczna komoda, mahoń. Polecamy, jako ozdoba, do wszystkich wnętrz.'),
(5, 'Mała komoda 2', 'k3.png', 3, 0, 'klasyczny', '2500', 'Klasyczna komoda, mahoń. Polecamy, jako ozdoba, do wszystkich wnętrz.'),
(6, 'Barokowa komoda', 'k4.png', 3, 0, 'barokowy', '4000', 'Przepiękna barokowa komoda.'),
(7, 'Komoda z lustrem', 'k5.png', 3, 1, 'nowoczesny', '1200', 'Nowoczesna komoda z lustrem. Idealna do przedpokoju. Dużo szuflad umożliwi sprytne przechowywanie. Jest nowa.'),
(8, 'Komoda z szufladami', 'k6.png', 3, 1, 'retro', '700', 'Mała komoda dębowa, przydatna w każdym mieszkaniu.'),
(9, 'Fotel niebieski', 'f1.png', 2, 1, 'glamour', '800', 'Klasyczny niebieski fotel, ozdobny, wygodny.'),
(10, 'Fotel zielony', 'f2.png', 2, 0, 'vintage', '1200', 'Fotel vintage, zielony, nieco podniszczony. Wymaga renowacji.'),
(11, 'Fotel czerwony', 'f3.png', 2, 0, 'barokowy', '1400', 'Piękny barokowy fotel do klasycznego wnętrza.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupy`
--

CREATE TABLE `zakupy` (
  `id` int(10) UNSIGNED NOT NULL,
  `idKlienci` int(10) UNSIGNED NOT NULL,
  `idMeble` int(10) UNSIGNED NOT NULL,
  `sztuk` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idKlienci`);

--
-- Indeksy dla tabeli `meble`
--
ALTER TABLE `meble`
  ADD PRIMARY KEY (`idMeble`);

--
-- Indeksy dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meble_id` (`idMeble`),
  ADD KEY `klienci_id` (`idKlienci`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idKlienci` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `meble`
--
ALTER TABLE `meble`
  MODIFY `idMeble` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zakupy`
--
ALTER TABLE `zakupy`
  ADD CONSTRAINT `zakupy_ibfk_1` FOREIGN KEY (`idMeble`) REFERENCES `meble` (`idMeble`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `zakupy_ibfk_2` FOREIGN KEY (`idKlienci`) REFERENCES `klienci` (`idKlienci`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
