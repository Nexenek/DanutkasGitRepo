-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Sie 2021, 18:45
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `konkurs`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nagrody`
--

CREATE TABLE `nagrody` (
  `id_nagrody` int(11) NOT NULL,
  `nazwa` varchar(25) COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` tinytext COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` decimal(19,2) DEFAULT NULL,
  `ilosc_sztuk` int(11) NOT NULL,
  `data_dodania` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `nagrody`
--

INSERT INTO `nagrody` (`id_nagrody`, `nazwa`, `opis`, `cena`, `ilosc_sztuk`, `data_dodania`) VALUES
(1, 'Laptop EXTRIME EDU', 'Laptop EXTRIME EDU został wyposażony w wydajny sześciordzeniowy procesor AMD Ryzen 7 4800H. Dlatego sprawdzi się on bardzo dobrze podczas normalnego korzystania, ale także jako narzędzie to rozgrywania emocjonujących rywalizacji w świecie gier.', '4599.00', 1, '2021-08-03'),
(2, 'Konsola EDU PRO', 'MAŁA KONSOLA, DUŻA MOC. Używaj tylko z grami cyfrowymi - konsola nie odtwarza dysków fizycznych. EDU PRO to najmniejsza konsola w historii. Ta całkowicie cyfrowa konsola zachwyci Cię nie tylko swoją szybkością ale i wydajnością.', '1138.50', 3, '2021-08-19'),
(3, 'Smartfon OKKO 10 PRO', 'OKKO 10 PRO 256 GB (CZARNY) Designerski smartfon w szklanej obudowie 3D, wyposażony w 16-rdzeniowy procesor Helio G90T, poczwórny aparat 128 Mpix, pełnoekranowy wyświetlacz AMOLED+ i moduł NFC.', '1828.00', 4, '2021-07-21'),
(4, 'Smart watch LEARNING', 'LEARNING GTXX (ZŁOTY) Elegancki i ultrasmukły smartwatch z udoskonaloną baterią o zwiększonej wydajności, superszybkim procesorem Kirin A1 oraz bogatą gamą inteligentnych funkcji.', '1230.00', 2, '2021-07-22'),
(5, 'Tablet SPORT Tab FFF 5G', 'DAJ SIĘ UWIEŚĆ DŹWIĘKOM I OBRAZOM SPORT Tab FFF 5G posiada niezwykle żywy 12,4-calowy ekran, który uwypukli każdy szczegół. Podwójne głośniki i dźwięk AKG zadbają o niesamowite kinowe doznania. ', '1673.00', 2, '2021-06-23'),
(6, 'Słuchawki BIG 6 ', 'Słuchawki BIG 6 mają wszystko, czego potrzebujesz, by zanurzyć się w głębokim i bogatym dźwięku. Zaawansowane rozwiązania, takie jak dwudrożne głośniki, ulepszona transmisja głosu czy aktywna redukcja szumów.', '650.00', 4, '2021-08-21'),
(7, 'Głośnik BIASS 3000', 'Bezprzewodowy głośnik multiroom (jasnoszary) inteligentny głośnik z dźwiękiem 360.', '460.00', 2, '2021-06-14'),
(8, 'Pendrive ULTRA ', 'ULTRA USB 3.0 256GB pozwoli Ci mieć zawsze przy sobie ulubione zdjęcia i potrzebne dokumenty cyfrowe. Poręczny pendrive zmieści się w kieszeni i możesz doczepić go do kluczy.', '222.22', 1, '2021-08-08'),
(9, 'Książka BESTSEL', 'Sofokles, Antygona – tragedia Sofoklesa z roku 442 p.n.e. Nazywana jest tragedią władzy i klasyfikowana jako chronologicznie ostatnia z cyklu trzech tragedii tebańskich opartych na mitach o tebańskim rodzie Labdakidów.', '12.10', 7, '2021-07-10'),
(10, 'Długopis LINE', 'Długopis LINE 4 kolory - GRAWER Ikona marki LINE. Dedykowany dla osób, które zawsze noszą długopis przy sobie. Dołączono pudełko upominkowe. Dostarczany z opatentowanym wkładem SUPERinkFlow.', '13.75', 7, '2021-06-12'),
(11, 'Piórnik szkolny', 'Piórnik szkolny z wyposażeniem MEGA GAME. Z przodu grafika z motywem gry. Dedykowany jest dla fana gier komputerowych. Piórnik idealnie pasuje do innych produktów z tej serii.', '173.00', 9, '2021-06-13'),
(12, 'Komplet zeszytów', 'Zeszyty PAPIER PP cechują się wysoką jakością papieru, estetyką wykończenia, modną grafiką okładek i hybrydowym wykończeniem. Wysokiej jakości uszlachetniona okładka PP. W zeszytach znajdziesz \"pigułkę wiedzy\".', '35.28', 8, '2021-08-01'),
(13, 'Mysz Wireless PPRO', 'Wireless PPRO to wyjątkowa mysz go grania dla profesjonalnych e-sportowców. Przez ponad 3 lata dział firmy współpracował z ponad 150 profesjonalnymi graczami, aby móc zagwarantować idealny kształt, masę i odczucia.', '728.00', 5, '2021-08-31'),
(14, 'Słuchawki EEAR', 'Słuchawki do gier oferują doskonałą jakość dźwięku i mocny bas. Miękkie nauszniki i regulowany pałąk sprawiają, że słuchawki wygodnie leżą nawet podczas długich godzin gry. Głośność jest łatwa do kontrolowania dzięki regulacji.', '127.18', 2, '2021-07-31'),
(15, 'Kakao OKO', 'Kakao ekologiczne, niski indeks glikemiczny, niskotłuszczowe, odpowiednie dla diety ketogenicznej, raw (surowe), superfood, wegańskie, wegetariańskie, wysoka zawartość błonnika, wysokobiałkowe.', '29.00', 3, '2021-06-07'),
(16, 'Lusterko LED', 'Urocze lusterko kosmetyczne z podświetleniem LED. Produkt wyposażony jest w kabel USB dzięki któremu możemy naładować lusterko. Posiada również podstawkę, która może posłużyć jako organizer na drobne akcesoria.', '18.80', 5, '2021-07-10'),
(17, 'Klamerki do prania', 'Pamiętasz, jak jako dziecko uwielbiałeś zaglądać do pralni i zabierać z kosza klamerki na pranie? Wtedy traktowałeś je jako fajne zabawki, które można wykorzystać na wiele różnych sposobów. Teraz dorosłeś a spinacze dalej są Ci potrzebne.', '9.90', 10, '2021-08-23'),
(18, 'Dętka MTB 26/1.75-2.5', 'Różnorodność dętek pozwala na właściwy wybór: dętka standardowa jest dostępna we wszystkich rozmiarach, oferuje najlepszy kompromis pomiędzy codzienną jazdą, a wagą, podczas gdy w wersjach Light największe znaczenie ma waga i osiągi.', '32.00', 2, '2021-08-17'),
(19, 'Szklana rybka Nemo', 'Wykonana jest ręcznie ze szkła. Może stanowić oryginalną i niebanalną dekorację. Ozdobi i doda uroku każdemu wnętrzu. Idealna jako piękny, oryginalny prezent dla każdego miłośnika szklanych figurek oraz dla zodiakalnych ryb.', '48.00', 4, '2021-08-06'),
(20, 'Zatyczki do uszu', 'Wkładki przeciwhałasowe wykonane z miękkiej hipoalergicznej pianki poliuretanowej, aby zapewnić pełny komfort i niewielki nacisk na wnętrze ucha. Ich gładka, odporna na zabrudzenia powierzchnia zapewnia lepszą higienę, trwałość i komfort.', '0.00', 9, '2021-08-02'),
(21, 'Skarpety ALPAKA', 'Alpaki to ładne puszyste zwierzęta z rodziny wielbłądowatych żyjące głównie w Ameryce Południowej. Włókno alpaki jest niezwykle cienkie, ma wspaniałe właściwości termoizolacyjne, grzeje dużo lepiej niż wełna owcza.', NULL, 5, '2021-08-15'),
(22, 'Maszynka MEAT', 'Duża moc pozwala zmielić aż do 1,7 kg mięsa w minutę. Trwała metalowa komora mielenia oraz nożyk są gwarancją długiego, bezproblemowego użytkowania.', NULL, 1, '2021-08-24'),
(23, 'Żelazko SLIDER', 'Żelazko parowe SLIDER doskonale sprawdzi się w każdym gospodarstwie domowym. Wyposażone jest w takie funkcje jak wyrzut pary czy zabezpieczenie przed kapaniem podczas prasowania na niższych temperaturach.', NULL, 3, '2021-08-25'),
(24, 'Puzzle 1000 Zgierz', 'Produkt został przygotowany przez znaną i lubianą markę Puzzleoni. Puzzle składają się z 1000 elementów i przedstawiają wspaniały krajobraz Zgierza. Puzzle z pewnością spodobają się fanom układanek.', NULL, 8, '2021-07-10'),
(25, 'Smar do klarnetu', 'Smar nowy w sztyfcie do korków łączących poszczególne elementy klarnetu może być używany również do korków ustnikowych w saksofonach. Sztyft bezbarwny.', '46.00', 3, '2021-08-05');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `nagrody`
--
ALTER TABLE `nagrody`
  ADD PRIMARY KEY (`id_nagrody`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `nagrody`
--
ALTER TABLE `nagrody`
  MODIFY `id_nagrody` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
