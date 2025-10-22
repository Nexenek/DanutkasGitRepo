SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `smoki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `parada`
--

CREATE TABLE IF NOT EXISTS `parada` (
  `id` int(11) NOT NULL,
  `rok` char(4) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `liczba_widzow` int(10) unsigned NOT NULL,
  `atrakcje` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `parada`
--

INSERT INTO `parada` (`id`, `rok`, `liczba_widzow`, `atrakcje`) VALUES
(1, '2025', 20025, 'piknik'),
(2, '2021', 35542, 'piknik'),
(3, '2000', 35000, 'widowisko plenerowe'),
(4, '2001', 35542, 'widowisko plenerowe'),
(5, '2002', 35000, 'widowisko plenerowe'),
(6, '2003', 35542, 'widowisko plenerowe'),
(7, '2004', 35520, 'widowisko plenerowe'),
(8, '2005', 25542, 'widowisko plenerowe'),
(9, '2006', 20525, 'piknik'),
(10, '2007', 35552, 'piknik'),
(11, '2008', 65000, 'widowisko plenerowe'),
(12, '2010', 75822, 'widowisko plenerowe'),
(13, '2011', 32560, 'widowisko plenerowe'),
(14, '2012', 45242, 'widowisko plenerowe'),
(15, '2013', 33320, 'widowisko plenerowe'),
(16, '2014', 22242, 'widowisko plenerowe'),
(17, '1990', 52525, 'piknik'),
(18, '1991', 26552, 'piknik'),
(19, '1992', 65025, 'widowisko plenerowe'),
(20, '1993', 76522, 'widowisko plenerowe'),
(21, '1994', 32554, 'piknik'),
(22, '1995', 42542, 'widowisko plenerowe'),
(23, '1996', 34120, 'widowisko plenerowe'),
(24, '1997', 22252, 'widowisko plenerowe'),
(25, '1981', 52425, 'piknik'),
(26, '1982', 26352, 'piknik'),
(27, '1983', 65065, 'widowisko plenerowe'),
(28, '1984', 76422, 'widowisko plenerowe'),
(29, '1985', 33554, 'piknik'),
(30, '1986', 42562, 'widowisko plenerowe'),
(31, '1988', 54120, 'widowisko plenerowe'),
(32, '1989', 22652, 'widowisko plenerowe'),
(33, '1971', 42425, 'piknik'),
(34, '1972', 24352, 'piknik'),
(35, '1973', 65465, 'widowisko plenerowe'),
(36, '1974', 76442, 'widowisko plenerowe'),
(37, '1965', 33553, 'piknik'),
(38, '1966', 32562, 'widowisko plenerowe'),
(39, '1964', 53120, 'piknik'),
(40, '1959', 22352, 'widowisko plenerowe'),
(41, '1951', 12425, 'piknik'),
(42, '1952', 21352, 'piknik'),
(43, '1943', 65165, 'piknik'),
(44, '1944', 76412, 'widowisko plenerowe'),
(45, '1945', 33551, 'piknik'),
(46, '1936', 12562, 'widowisko plenerowe'),
(47, '1934', 51120, 'piknik'),
(48, '1939', 22152, 'widowisko plenerowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smok`
--

CREATE TABLE IF NOT EXISTS `smok` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `dlugosc` int(10) unsigned NOT NULL,
  `szerokosc` int(10) unsigned NOT NULL,
  `pochodzenie` varchar(30) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `smok`
--

INSERT INTO `smok` (`id`, `nazwa`, `dlugosc`, `szerokosc`, `pochodzenie`) VALUES
(1, 'zielony metalik', 3, 2, 'Chiny'),
(2, 'niebieski', 5, 2, 'Polska'),
(3, 'czerwonooki', 10, 1, 'Polska'),
(4, 'straszny', 5, 5, 'Japonia'),
(5, 'Śnieżny', 4, 2, 'Polska'),
(6, 'Skrzydlaty diabeł', 5, 1, 'Polska'),
(7, 'Bajeczny', 4, 3, 'Polska'),
(8, 'Skrzydlaty anioł', 6, 1, 'Polska'),
(9, 'przedszkolny', 4, 2, 'Polska'),
(10, 'Skrzydlaty Ranii', 8, 1, 'Polska'),
(11, 'Cienki', 15, 2, 'Polska'),
(12, 'Wielki skrzydlaty ', 6, 3, 'Polska'),
(13, 'Nobik', 5, 3, 'Francja'),
(14, 'Rafael zielony', 6, 2, 'Francja'),
(15, 'Nowicjusz', 5, 3, 'Bułgaria'),
(16, 'Rafael złoty', 7, 2, 'Francja'),
(17, 'Antonio', 15, 3, 'Bułgaria'),
(18, 'Luiza złota', 7, 2, 'Francja'),
(19, 'Straszny potwór', 6, 3, 'Bułgaria'),
(20, 'Francuski pan', 2, 2, 'Francja'),
(21, 'Nene', 5, 3, 'Polska'),
(22, 'Riko', 7, 2, 'Polska'),
(23, 'Niebieski', 3, 2, 'Chiny'),
(24, 'Zielony', 5, 2, 'Polska'),
(25, 'Czerwony', 10, 1, 'Polska'),
(26, 'Czerwony', 5, 5, 'Japonia'),
(27, 'Wielki', 4, 2, 'Polska'),
(28, 'Skrzydlaty różowy', 1, 1, 'Polska'),
(29, 'Bajeczny wedel', 2, 3, 'Polska'),
(30, 'Skrzydlaty anioł', 6, 1, 'Bułgaria'),
(31, 'Polo', 4, 2, 'Polska'),
(32, 'Skrzydlaty łaciaty', 5, 1, 'Polska'),
(33, 'Cienki inaczej', 5, 2, 'Polska'),
(34, 'Wielki orzeł ', 8, 3, 'Polska'),
(35, 'Zielony', 5, 3, 'Francja'),
(36, 'Czerwony', 8, 2, 'Francja'),
(37, 'Nowy', 5, 3, 'Bułgaria'),
(38, 'Błękitny', 2, 2, 'Francja'),
(39, 'Seledynek', 12, 3, 'Bułgaria'),
(40, 'Luiza srebna', 7, 2, 'Francja'),
(41, 'Stana', 4, 3, 'Bułgaria'),
(42, 'Francuski pogromca', 2, 2, 'Francja'),
(43, 'Rogaty', 5, 3, 'Polska'),
(44, 'Złoty ogień', 7, 1, 'Polska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `udzial`
--

CREATE TABLE IF NOT EXISTS `udzial` (
  `id` int(11) NOT NULL,
  `id_parada` int(11) NOT NULL,
  `id_smok` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `udzial`
--

INSERT INTO `udzial` (`id`, `id_parada`, `id_smok`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 10),
(7, 1, 11),
(8, 1, 12),
(9, 1, 14),
(10, 1, 15),
(11, 1, 16),
(12, 1, 17),
(13, 1, 18),
(14, 1, 24),
(15, 1, 25),
(16, 1, 20),
(17, 1, 21),
(18, 1, 23),
(19, 1, 26),
(20, 1, 27),
(21, 1, 40),
(22, 1, 41),
(23, 2, 12),
(24, 2, 14),
(25, 2, 15),
(26, 2, 16),
(27, 2, 17),
(28, 2, 18),
(29, 2, 24),
(30, 2, 25),
(31, 3, 20),
(32, 3, 21),
(33, 3, 23),
(34, 3, 26),
(35, 3, 27),
(36, 3, 40),
(37, 3, 41),
(38, 4, 12),
(39, 4, 14),
(40, 4, 15),
(41, 4, 16),
(42, 4, 17),
(43, 4, 18),
(44, 4, 24),
(45, 4, 25),
(46, 4, 20),
(47, 4, 21),
(48, 4, 23),
(49, 4, 26),
(50, 4, 27),
(51, 4, 40),
(52, 4, 41),
(53, 5, 12),
(54, 5, 13),
(55, 5, 15),
(56, 5, 16),
(57, 5, 17),
(58, 6, 18),
(59, 6, 33),
(60, 6, 35),
(61, 6, 30),
(62, 6, 31),
(63, 6, 23),
(64, 6, 26),
(65, 6, 27),
(66, 6, 40),
(67, 6, 41),
(68, 7, 12),
(69, 7, 13),
(70, 7, 15),
(71, 7, 16),
(72, 8, 17),
(73, 8, 18),
(74, 8, 33),
(75, 8, 35),
(76, 8, 30),
(77, 8, 31),
(78, 9, 23),
(79, 9, 26),
(80, 9, 27),
(81, 9, 40),
(82, 9, 41),
(83, 15, 12),
(84, 15, 13),
(85, 15, 15),
(86, 15, 16),
(87, 15, 17),
(88, 16, 18),
(89, 16, 33),
(90, 16, 35),
(91, 16, 30),
(92, 16, 31),
(93, 16, 23),
(94, 16, 26),
(95, 16, 27),
(96, 16, 39),
(97, 16, 41),
(98, 17, 12),
(99, 17, 13),
(100, 17, 15),
(101, 17, 16),
(102, 17, 17),
(103, 17, 18),
(104, 17, 33),
(105, 18, 35),
(106, 18, 30),
(107, 18, 31),
(108, 18, 23),
(109, 18, 26),
(110, 18, 27),
(111, 19, 39),
(112, 19, 41),
(113, 27, 12),
(114, 27, 13),
(115, 27, 15),
(116, 27, 16),
(117, 27, 17),
(118, 27, 18),
(119, 27, 33),
(120, 28, 35),
(121, 28, 30),
(122, 28, 31),
(123, 28, 23),
(124, 28, 25),
(125, 28, 26),
(126, 29, 37),
(127, 29, 41);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `parada`
--
ALTER TABLE `parada`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smok`
--
ALTER TABLE `smok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `udzial`
--
ALTER TABLE `udzial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parada` (`id_parada`),
  ADD KEY `id_smok` (`id_smok`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `parada`
--
ALTER TABLE `parada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT dla tabeli `smok`
--
ALTER TABLE `smok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT dla tabeli `udzial`
--
ALTER TABLE `udzial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `udzial`
--
ALTER TABLE `udzial`
  ADD CONSTRAINT `udzial_ibfk_1` FOREIGN KEY (`id_smok`) REFERENCES `smok` (`id`),
  ADD CONSTRAINT `udzial_ibfk_2` FOREIGN KEY (`id_parada`) REFERENCES `parada` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
