-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Cze 2021, 10:22
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `p1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konta`
--

CREATE TABLE `konta` (
  `id` int(10) UNSIGNED NOT NULL,
  `nick` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rejestracja` year(4) DEFAULT NULL,
  `postow` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `konta`
--

INSERT INTO `konta` (`id`, `nick`, `email`, `rejestracja`, `postow`) VALUES
(1, 'Jacek', 'jacek@serwer.pl', 2019, 50),
(2, 'Ewa', 'ewa@serwer.pl', 2021, 13),
(3, 'Jan', 'jan@serwer.pl', 2017, 90),
(4, 'Anna', 'anna@serwer.pl', 2021, 4),
(5, 'Gosia', 'malgorzata@serwer.pl', 2021, 6),
(6, 'Krzysiek', 'krzys@serwer.pl', 2020, 23),
(7, 'Romek', 'romek@serwer.pl', 2018, 30),
(8, 'Ola', 'ola@serwer.pl', 2021, 0),
(9, 'Tomek', 'tom@serwer.pl', 2016, 90),
(10, 'Monika', 'mon@serwer.pl', 2020, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odpowiedzi`
--

CREATE TABLE `odpowiedzi` (
  `id` int(10) UNSIGNED NOT NULL,
  `Pytania_id` int(10) UNSIGNED NOT NULL,
  `konta_id` int(10) UNSIGNED NOT NULL,
  `odpowiedz` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `odpowiedzi`
--

INSERT INTO `odpowiedzi` (`id`, `Pytania_id`, `konta_id`, `odpowiedz`) VALUES
(1, 1, 4, 'Jeśli pies nie był nigdy czesany to zacznij czesać mięciutką szczotką. Tak aby piesek nie zraził się do tego zabiegu.'),
(2, 1, 5, 'Bardzo delikatnie czesz łapki i brodę i ogonek.'),
(3, 1, 9, 'Nagradzaj spokój. Dopiero jak zauwazysz że pies nie stresuje się przy czesaniu można stopniowo zacząć czesać i trymować.'),
(4, 2, 2, 'Przede wszystkim wyrzuć te wszystkie rzeczy na których psy śpią'),
(5, 2, 7, 'Musisz dokładnie poodkurzać mieszkanie, dywany, chodniki, mable, zasłony oraz dodatkowo wytrzepać, i przede wszystkim dokładnie poodkurzać zakamarki.'),
(6, 2, 5, 'Dla psów dostępne są również szampony owadobójcze. '),
(7, 2, 9, 'Psy powinny też chodzić bez przerwy w obroży owadobójczej, dodatkowo powinny być zakropione kroplami tzw. spot-on.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(10) UNSIGNED NOT NULL,
  `konta_id` int(10) UNSIGNED NOT NULL,
  `pytanie` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `pytania`
--

INSERT INTO `pytania` (`id`, `konta_id`, `pytanie`) VALUES
(1, 1, 'Mam pytanie w jaki sposób dbać o sierść sznaucera? Jestem nowym właścicielem i nie za bardzo jeszcze wiem jak to robić. Dziękuję za pomoc.'),
(2, 10, 'Witam mam wielki problem z pchłami u moich psów. Pomocy!'),
(3, 5, 'Czym czesać pudla. Proszę o pomoc'),
(4, 3, 'Moje pieski mnie nie słuchają jak sobie z tym radzić?');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `konta`
--
ALTER TABLE `konta`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `konta`
--
ALTER TABLE `konta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `odpowiedzi`
--
ALTER TABLE `odpowiedzi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;