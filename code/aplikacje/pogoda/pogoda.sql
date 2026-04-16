

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pogoda`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejscowosc`
--

CREATE TABLE IF NOT EXISTS `miejscowosc` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `kraj` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miejscowosc`
--

INSERT INTO `miejscowosc` (`id`, `nazwa`, `kraj`) VALUES
(1, 'Berlin', 'Niemcy'),
(2, 'Gdańsk', 'Polska'),
(3, 'Hamburg', 'Niemcy'),
(4, 'Frankfurt', 'Niemcy'),
(5, 'Warszawa', 'Polska'),
(6, 'Zakopane', 'Polska'),
(7, 'Praga', 'Czechy'),
(8, 'Brno', 'Czechy'),
(9, 'Ostrawa', 'Czechy'),
(10, 'Bratysława', 'Niemcy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miesiace`
--

CREATE TABLE IF NOT EXISTS `miesiace` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `pora` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miesiace`
--

INSERT INTO `miesiace` (`id`, `nazwa`, `pora`) VALUES
(1, 'styczeń', 'zima'),
(2, 'luty', 'zima'),
(3, 'marzec', 'wiosna'),
(4, 'kwiecień', 'wiosna'),
(5, 'maj', 'wiosna'),
(6, 'czerwiec', 'lato'),
(7, 'lipiec', 'lato'),
(8, 'sierpień', 'lata'),
(9, 'wrzesień', 'jesień'),
(10, 'październik', 'jesień'),
(11, 'listopad', 'jesień'),
(12, 'grudzień', 'zima');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pomiary`
--

CREATE TABLE IF NOT EXISTS `pomiary` (
  `id` int(11) NOT NULL,
  `temperatura` int(11) NOT NULL,
  `id_miejscowosc` int(11) NOT NULL,
  `id_miesiac` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pomiary`
--

INSERT INTO `pomiary` (`id`, `temperatura`, `id_miejscowosc`, `id_miesiac`) VALUES
(1, 12, 5, 2),
(2, 15, 5, 1),
(3, 7, 6, 2),
(4, 20, 8, 5),
(5, 15, 3, 4),
(6, 17, 3, 11),
(7, -5, 5, 1),
(8, -8, 6, 12),
(9, -10, 6, 1),
(10, -12, 1, 2),
(11, 25, 5, 7),
(12, 30, 9, 7),
(13, 33, 2, 7),
(14, 15, 9, 9),
(16, 24, 9, 6),
(17, -4, 8, 4),
(18, 17, 6, 6),
(19, 23, 10, 5),
(20, 16, 2, 4),
(21, 21, 8, 7),
(22, 2, 6, 1),
(23, 7, 8, 2),
(24, 13, 10, 3),
(25, 14, 10, 4),
(26, 19, 9, 5),
(27, 22, 8, 6),
(28, 32, 7, 7),
(29, 27, 6, 8),
(30, 19, 5, 9),
(31, 11, 4, 10),
(32, 4, 3, 11),
(33, -8, 2, 12),
(34, 35, 3, 7),
(35, 12, 3, 4),
(36, 33, 3, 8),
(37, 15, 3, 4),
(38, 17, 3, 8),
(39, 22, 9, 4),
(40, 15, 10, 8),
(41, 15, 7, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `miejscowosc`
--
ALTER TABLE `miejscowosc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miesiace`
--
ALTER TABLE `miesiace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pomiary`
--
ALTER TABLE `pomiary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_miejscowosc` (`id_miejscowosc`),
  ADD KEY `id_miejscowosc_2` (`id_miejscowosc`),
  ADD KEY `id_miesiac` (`id_miesiac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `miejscowosc`
--
ALTER TABLE `miejscowosc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `miesiace`
--
ALTER TABLE `miesiace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `pomiary`
--
ALTER TABLE `pomiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `pomiary`
--
ALTER TABLE `pomiary`
  ADD CONSTRAINT `pomiary_ibfk_1` FOREIGN KEY (`id_miejscowosc`) REFERENCES `miejscowosc` (`id`),
  ADD CONSTRAINT `pomiary_ibfk_2` FOREIGN KEY (`id_miesiac`) REFERENCES `miesiace` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
