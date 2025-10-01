-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Sty 2022, 11:38
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `gry`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opis` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `punkty` int(10) UNSIGNED DEFAULT NULL,
  `cena` float DEFAULT NULL,
  `zdjecie` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `gry`
--

INSERT INTO `gry` (`id`, `nazwa`, `opis`, `punkty`, `cena`, `zdjecie`) VALUES
(1, 'Czarodziejka', 'Rozgrywająca się w otwartym świecie przygoda. Jesteś czarodziejką Vestą i musisz zdobyć jedyny w swoim rodzaju diament, który pozwoli zrównoważyć siły w otaczającym Cię świecie', 45, 100, 'Czarodziejka.jpg'),
(2, 'Kalipso', 'Kroniki Kalipso opowiadają historię wyspy IO, na której od niepamiętnych czasów ścierają się ze sobą dwa gatunki pradawnego świata: Eloje i Morloki. Jesteś rycerzem, który szuka pradawnej kroniki zawierającej przepis na utrzymanie pokoju na wyspie\r\n', 125, 76, 'kalipso.jpg'),
(3, 'Katedra', 'W opuszczonej katedrze aniołowie i demony walczą o dusze ludzi na ziemi', 56, 50, 'katedra.jpg'),
(4, 'Krokodyl', 'Rzeka zapomnienia kryje niebezpieczeństwa, które czekają na śmiałków przeprawiających się w poszukiwaniu nowych terenów na obozowiska', 34, 33, 'krokodyl.jpg'),
(5, 'Księżniczka Persji', 'Wojownicza księżniczka Persji musi uniknąć konfliktów zbrojnych zagrażających jej podwładnym', 293, 100, 'Persja.jpg'),
(6, 'Mag', 'W pradawnym świecie magowie władają państwami. Ci potężni czarodzieje nie znają litości dla swoich ludów, aż ... W odległej krainie rodzi się dziecko, które nie tylko zdradza umiejętności czarowania, ale też wkrótce zbuntuje się przeciwko hegemoni Magów i samo doprowadzi do zjednoczenia narodów i pokoju w pradawnym Świecie. Wpierw jednak musi stoczyć wojnę z Magami', 357, 150, 'Mag.jpg'),
(7, 'Nieznany Ląd', 'Prosta gra przygodowa dla najmłodszych, którzy mogą się wcielić w niepokonanego kapitana Prixa podróżującego przez kosmos w poszukiwaniu nieznanego lądu', 96, 50, 'NieznanyLad.jpg'),
(8, 'Wyprawa Na Księżyc', 'Misja Apollo musi tym razem wykonać lot na księżyc aby zmierzyć się z obcymi, którzy opanowali srebrny glob i planują inwazję na ziemię', 103, 79, 'WyprawaNaKsiezyc.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `gry`
--
ALTER TABLE `gry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
