-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Lut 2022, 10:11
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
-- Baza danych: `medica`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abonamenty`
--

CREATE TABLE `abonamenty` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  `cena` int(10) UNSIGNED DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `abonamenty`
--

INSERT INTO `abonamenty` (`id`, `nazwa`, `cena`, `opis`) VALUES
(1, 'Standard', 200, 'Zdrowie jest dla Ciebie ważne i nie chcesz przepłacać? W abonamencie medycznym standardowym nie musisz płacić osobno za każdą wizytę, a najczęściej wybierane poradnie masz w cenie pakietu bez skierowań i zbędnych formalności. Korzystaj z wygodnych e-wizyt, zamawiaj recepty przez telefon, umawiaj i odwołuj wizyty w aplikacji mobilnej. Zyskaj dostęp do sieci przychodni w całym Wrocławiu.'),
(2, 'Premium', 500, 'Szukasz najwygodniejszego rozwiązania jakie mamy? Pakiet Premium to dostęp do wszystkich naszych poradni w cenie abonamentu. Także nie musisz płacić za wszelkie badania laboratoryjne oraz za dojazd lekarza do Twojego domu. Pakiet ten wybierany jest też przez duże firmy, gdyż wtedy proponujemy dla zamówień grupowych zniżkę 20%. Korzystaj z wygodnych e-wizyt, zamawiaj recepty przez telefon, umawiaj i odwołuj wizyty w aplikacji mobilnej. Zyskaj dostęp do sieci przychodni w całym Wrocławiu.'),
(3, 'Dziecko', 100, 'Dzieci są u nas otoczone szczególną opieką doświadczonych pediatrów, którzy koordynują nie tylko leczenie ale i profilaktykę z tak ważnych dziedzin jak laryngologia, wady postawy, zdrowe ząbki, zdrowe serce i nerki. Gdy tylko Twoje dziecko poczuje się chore, możesz śmiało nas odwiedzić. Przez 24 godziny / dobę prowadzimy dyżur pediatryczny w wybranych przychodniach we Wrocławiu.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cechy`
--

CREATE TABLE `cechy` (
  `id` int(10) UNSIGNED NOT NULL,
  `cecha` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cechy`
--

INSERT INTO `cechy` (`id`, `cecha`) VALUES
(1, 'Lekarz POZ'),
(2, 'Pediatra'),
(3, 'Geriatra'),
(4, 'Kardiolog'),
(5, 'Ortopeda'),
(6, 'Laryngolog'),
(7, 'Urolog'),
(8, 'Endokrynolog'),
(9, 'Ginekolog'),
(10, 'Podstawowe badania laboratoryjne'),
(11, 'Wszystkie badania laboratoryjne'),
(12, 'Diabetolog');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczegolyabonamentu`
--

CREATE TABLE `szczegolyabonamentu` (
  `id` int(10) UNSIGNED NOT NULL,
  `Abonamenty_id` int(10) UNSIGNED NOT NULL,
  `Cechy_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `szczegolyabonamentu`
--

INSERT INTO `szczegolyabonamentu` (`id`, `Abonamenty_id`, `Cechy_id`) VALUES
(1, 1, 1),
(2, 1, 8),
(3, 1, 4),
(4, 1, 9),
(5, 1, 7),
(6, 1, 10),
(7, 2, 1),
(8, 2, 2),
(9, 2, 3),
(10, 2, 4),
(11, 2, 5),
(12, 2, 6),
(13, 2, 7),
(14, 2, 8),
(15, 2, 9),
(16, 2, 11),
(17, 2, 12),
(18, 3, 2),
(19, 3, 4),
(20, 3, 5),
(21, 3, 6),
(22, 3, 7);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `abonamenty`
--
ALTER TABLE `abonamenty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cechy`
--
ALTER TABLE `cechy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `szczegolyabonamentu`
--
ALTER TABLE `szczegolyabonamentu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SzczegolyAbonamentu_FKIndex1` (`Cechy_id`),
  ADD KEY `SzczegolyAbonamentu_FKIndex2` (`Abonamenty_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `abonamenty`
--
ALTER TABLE `abonamenty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `cechy`
--
ALTER TABLE `cechy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `szczegolyabonamentu`
--
ALTER TABLE `szczegolyabonamentu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
