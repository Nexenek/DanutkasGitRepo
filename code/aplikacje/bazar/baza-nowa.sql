

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sklep`
--

CREATE TABLE IF NOT EXISTS `sklep` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `wlasciciel` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `sklep`
--

INSERT INTO `sklep` (`id`, `nazwa`, `wlasciciel`) VALUES
(1, 'żabka', 'Jan'),
(2, 'dino', 'Jan'),
(3, 'biedronka', 'Anna'),
(4, 'lessi', 'Jolanta'),
(5, 'u Asi', 'Joanna'),
(6, 'Tomek i Atomek', 'Anna'),
(7, 'Sami swoi', 'Roman'),
(8, 'Smaki lata', 'Anna'),
(9, 'Zieleniec', 'Adam'),
(10, 'Kolorowo', 'Jakub');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towar`
--

CREATE TABLE IF NOT EXISTS `towar` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `rodzaj` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `cena` decimal(20,2) NOT NULL,
  `plik` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `towar`
--

INSERT INTO `towar` (`id`, `nazwa`, `rodzaj`, `cena`, `plik`) VALUES
(1, 'gruszka', 'owoc', '5.00', 'gruszka.png'),
(2, 'jabłko', 'owoc', '5.70', 'jabłko.png'),
(3, 'banan', 'owoc', '7.50', 'banan.png'),
(4, 'ananas', 'owoc', '8.20', 'ananas.png'),
(5, 'mango', 'owoc', '12.00', 'mango.png'),
(6, 'winogrona', 'owoc', '12.30', 'winogrona.png'),
(7, 'jagody', 'owoc', '10.00', 'jagody.png'),
(8, 'maliny', 'owoc', '9.50', 'maliny.png'),
(9, 'pomarańcza', 'owoc', '5.00','pomarancza.png'),
(10, 'cytryna', 'owoc', '7.70','cytryna.png'),
(11, 'marchew', 'warzywo', '4.20','warzywo.png'),
(12, 'pietruszka', 'warzywo', '14.70','warzywo.png'),
(13, 'seler', 'warzywo', '5.00','warzywo.png'),
(14, 'por', 'warzywo', '8.00', 'warzywo.png'),
(15, 'sałata', 'warzywo', '3.80', 'warzywo.png'),
(16, 'kapusta', 'warzywo', '4.90', 'warzywo.png'),
(17, 'cebula', 'warzywo', '3.00', 'warzywo.png'),
(18, 'ziemniaki', 'warzywo', '3.00', 'warzywo.png'),
(19, 'kalarepa', 'warzywo', '6.60', 'warzywo.png'),
(20, 'kalafior', 'warzywo', '6.00', 'warzywo.png'),
(21, 'pomidor', 'warzywo', '9.90', 'warzywo.png'),
(22, 'ogórek', 'warzywo', '6.20', 'warzywo.png'),
(23, 'brokuł', 'warzywo', '6.00', 'warzywo.png'),
(24, 'cukinia', 'warzywo', '6.20', 'warzywo.png'),
(25, 'śliwka', 'owoc', '8.00', 'warzywo.png'),
(26, 'burak', 'warzywo', '3.50', 'warzywo.png'),
(27, 'morela', 'owoc', '13.30', 'owoc.png'),
(28, 'papryka czerwona', 'warzywo', '12.00', 'warzywo.png'),
(29, 'czereśnia', 'owoc', '25.00', 'owoc.png'),
(30, 'papryka zielona', 'warzywo', '11.00', 'warzywo.png'),
(31, 'papryka żółta', 'warzywo', '9.80', 'warzywo.png'),
(32, 'arbuz', 'owoc', '4.00', 'owoc.png'),
(33, 'bataty', 'warzywo', '6.50', 'warzywo.png'),
(34, 'wiśnia', 'owoc', '21.00', 'owoc.png'),
(35, 'agrest', 'owoc', '8.50', 'owoc.png'),
(36, 'dynia', 'warzywo', '6.00', 'warzywo.png'),
(37, 'czosnek', 'warzywo', '6.10', 'warzywo.png'),
(38, 'porzeczka', 'owoc', '9.00', 'owoc.png'),
(39, 'rzodkiew', 'warzywo', '2.50', 'warzywo.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE IF NOT EXISTS `zamowienie` (
  `id` int(11) NOT NULL,
  `id_towar` int(11) NOT NULL,
  `id_sklep` int(11) NOT NULL,
  `liczba_kg` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id`, `id_towar`, `id_sklep`, `liczba_kg`) VALUES
(1, 4, 3, 10),
(2, 14, 3, 25),
(3, 1, 1, 20),
(4, 2, 1, 13),
(5, 3, 1, 22),
(6, 4, 2, 15),
(7, 5, 2, 40),
(8, 6, 2, 22),
(9, 7, 2, 10),
(10, 8, 2, 14),
(11, 9, 2, 45),
(12, 10, 2, 20),
(13, 11, 3, 10),
(14, 12, 4, 20),
(15, 13, 3, 30),
(16, 14, 3, 35),
(17, 15, 4, 5),
(18, 15, 3, 22),
(19, 16, 4, 60),
(20, 17, 4, 52),
(21, 18, 5, 15),
(22, 18, 6, 15),
(23, 19, 5, 11),
(24, 20, 5, 15),
(25, 39, 6, 20),
(26, 38, 6, 44),
(27, 37, 8, 12),
(28, 36, 9, 15),
(29, 35, 7, 35),
(30, 34, 7, 36),
(31, 33, 8, 19),
(32, 32, 10, 18),
(33, 31, 4, 22),
(34, 30, 6, 25),
(35, 29, 8, 30),
(36, 29, 9, 35),
(37, 28, 10, 20),
(38, 27, 10, 20),
(39, 26, 5, 30),
(40, 25, 5, 32),
(41, 24, 4, 30),
(42, 23, 8, 40),
(43, 22, 8, 20),
(44, 21, 5, 35),
(45, 20, 1, 10),
(46, 20, 8, 13),
(47, 20, 3, 10),
(48, 20, 4, 25);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `sklep`
--
ALTER TABLE `sklep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towar`
--
ALTER TABLE `towar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_towar` (`id_towar`),
  ADD KEY `id_sklep` (`id_sklep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `sklep`
--
ALTER TABLE `sklep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `towar`
--
ALTER TABLE `towar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_towar`) REFERENCES `towar` (`id`),
  ADD CONSTRAINT `zamowienie_ibfk_2` FOREIGN KEY (`id_sklep`) REFERENCES `sklep` (`id`);

