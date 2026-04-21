-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2026 at 08:06 PM
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
-- Database: `korona`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opis`
--

CREATE TABLE `opis` (
  `id` int(10) UNSIGNED NOT NULL,
  `szczyty_id` int(10) UNSIGNED NOT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `opis`
--

INSERT INTO `opis` (`id`, `szczyty_id`, `opis`) VALUES
(1, 1, 'Rysy (niem. Meeraugspitze, słow. Rysy, węg. Tengerszem-csúcs) – góra położona na granicy polsko-słowackiej, w Tatrach Wysokich (jednej z części Tatr). Ma trzy wierzchołki, z których najwyższy jest środkowy (2501 metrów nad poziomem morza), znajdujący się w całości na terytorium Słowacji. Wierzchołek północno-zachodni, przez który biegnie granica, stanowi najwyżej położony punkt Polski (według większości najbardziej wiarygodnych źródeł 2499 m – więcej informacji w sekcji „Topografia”) i należy do Korony Europy.'),
(2, 2, 'Tarnica (1346 m) – najwyższy szczyt polskich Bieszczadów i województwa podkarpackiego, wznoszący się na krańcu pasma połonin, w grupie tzw. gniazda Tarnicy i Halicza. Należy do Korony Gór Polski.\r\n\r\nSzczyt Tarnicy wznosi się ponad 500 m nad dolinę Wołosatki i wyróżnia się osobliwą sylwetką. Od sąsiedniego masywu Krzemienia grzbiet (faktycznie zwornikiem jest Tarniczka) oddzielony jest głęboką Przełęczą Goprowską, natomiast z Szerokim Wierchem łączy się charakterystyczną, ostro wciętą w grzbiet przełęczą o wysokości 1286 m, od której pochodzi nazwa góry (w języku rumuńskim słowo „tarnița” oznacza siodło, przełęcz). '),
(3, 3, 'Lackowa (słow. Lacková, łem. Лацкова, (997,1 m n.p.m.) – najwyższy szczyt po polskiej stronie Beskidu Niskiego, położony między Krynicą-Zdrój a Wysową, na granicy ze Słowacją. Wznosi się dobrze widoczną z daleka kopułą nad wsiami Izby oraz Bieliczna (z polskiej strony), a Frička i Cegiełka (po słowackiej stronie, bardziej oddalone). Pierwotnie góra nosiła łemkowską nazwę Łackowa (Wackowa). Inne nazwy, rzadziej używane: Chorągiewka Pułaskiego, Lachowa, czasem żartobliwie nazywana Górą Policyjną (ze względu na wysokość).\r\n\r\nLackowa należy do Korony Gór Polski. Zachodni stok góry, którym biegnie czerwony szlak turystyczny, jest najbardziej stromym w Beskidzie Niskim i jednym z najbardziej stromych w polskich górach (poza Tatrami) odcinkiem znakowanego szlaku.'),
(4, 4, 'Radziejowa (1266,5 m) – najwyższy szczyt Beskidu Sądeckiego. Nazwa szczytu pochodzi od osoby o nazwisku lub przydomku Radziej. Radziejowa należy do Korony Gór Polski.\r\n\r\nZnajduje się w głównym grzbiecie Pasma Radziejowej, pomiędzy Wielkim Rogaczem, od którego oddziela ją przełęcz Żłobki, a masywem Złomistego Wierchu, położonego za Przełęczą Długą. Przed Przełęczą Długą znajduje się jeszcze niewybitna kulminacja Małej Radziejowej (1207 m). Główny grzbiet, patrząc od zachodu, skręca na Radziejowej w prawo, na południe, natomiast na północny wschód odbiega boczny grzbiet kulminujący w Jaworzynie, biegnący ku dolinie Wielkiej Roztoki, a na północ odgałęzia się niewielki grzbiet Magorzycy.'),
(5, 5, 'Wysokie Skałki (słow. Vysoké Skalky, 1049,9 m – szczyt w Małych Pieninach, położony na granicy polsko-słowackiej i będący najwyższym szczytem całych Pienin i Pienińskiego Pasa Skałkowego. Dawniej szczyt ten miał również inne, lokalne nazwy: Pamiarky, Kiczera. Używana przez tutejszą ludność (Łemków) nazwa Pamiarky pochodzi prawdopodobnie od istniejącej tu niegdyś wieży triangulacyjnej, nazwa „Kiczera” od Połoniny Kiczera znajdującej się pod szczytem, na południowo-zachodniej stronie góry. Na mapach turystycznych często używana była też nazwa „Wysoka”. Góra zaliczana jest do Korony Gór Polski.'),
(6, 6, 'Mogielica – najwyższy szczyt Beskidu Wyspowego (1170,2 m). Wierzchołkowa część masywu Mogielicy jest nazywana przez miejscową ludność Kopą, ze względu na charakterystyczny kształt. W starszej literaturze można spotkać błędną nazwę „Mogielnica”. Z punktów widokowych, na szczycie i na polanach, rozpościerają się szerokie widoki na Beskid Wyspowy, Beskid Sądecki, Pieniny, Gorce, Tatry.'),
(7, 7, 'Turbacz – najwyższy szczyt Gorców, znajdujący się w centralnym punkcie pasma i tworzący potężny rozróg. Według większości źródeł ma wysokość 1310 m. Zbudowany jest z fliszu karpackiego.\r\n\r\nSam szczyt Turbacza niczym nie wyróżnia się w dużej, szczytowej kopule. Otoczony był gęstym lasem świerkowym, przez co był pozbawiony widoków; stoi na nim kamienny obelisk oraz żelazny krzyż z datami 1945–1985. Dawniej wierzchołek był bezleśny i rozciągały się z niego szerokie widoki. W 1832 można było przez lunetę zobaczyć Kraków. Od kilku lat, po zniszczeniu lasu, z wierzchołka znowu rozciąga się widok w kierunku północnym i zachodnim. Dla większości turystów nazwa Turbacz kojarzy się ze stojącym na rozległej polanie Wolnica (część Hali Długiej) budynkiem schroniska PTTK na Turbaczu.'),
(8, 8, 'Lubomir (903,6 m) – szczyt w Paśmie Lubomira i Łysiny. Nazwa szczytu pochodzi od nazwiska księcia Kazimierza Lubomirskiego. Nadano ją w 1932 r. w uznaniu jego zasług (w 1922 r. ofiarował domek myśliwski i 10 ha lasu na szczycie zwanym wówczas Łysiną pod budowę obserwatorium astronomicznego).\r\nLubomir jest najwyższym szczytem Pasma Lubomira i Łysiny i znajduje się na jego wschodnim końcu, jego południowo-wschodnie stoki opadają do Przełęczy Jaworzyce. Stoki północne są bardziej strome od południowych. Z masywu Lubomira wypływa kilka potoków: Niedźwiadek (dopływ Kasinianki) oraz Lipnik i Smarkawka (dopływy Krzyworzeki). W naukowo opracowanej regionalizacji Polski według Jerzego Kondrackiego całe Pasmo Lubomira i Łysiny należy do Beskidu Wyspowego. Na mapach często zaliczane jest do Beskidu Makowskiego, w przewodnikach zwykle jednak opisywane jest właśnie razem z Beskidem Wyspowym.'),
(9, 9, 'Babia Góra (słow. Babia hora) – masyw górski w Paśmie Babiogórskim należącym do Beskidu Żywieckiego w Beskidach Zachodnich (według słowackiej terminologii są to Oravské Beskydy).\r\n\r\nNajwyższym szczytem jest Diablak (1725 m, według Geoportalu 1722,9, niem. Teufelspitze, czyli Diabelski Szczyt), często nazywany również Babią Górą, jak cały masyw. Jest najwyższym szczytem Beskidów Zachodnich i poza Tatrami najwyższym szczytem w Polsce, drugim co do wybitności (po Śnieżce). Zaliczany jest do Korony Gór Polski.'),
(10, 10, 'Czupel (930 m) – najwyższy szczyt Beskidu Małego, znajdujący się w jego zachodniej części położonej na zachód od doliny Soły. Jest to tzw. Grupa Magurki Wilkowickiej. Czupel jest zwornikiem dla kilku grzbietów. Sąsiaduje z Rogaczem (899 m), oddzielony od niego przełęczą Wysokie Siodło.\r\n\r\nWedług nowszych pomiarów szczyt ma wysokość 930 m. Na starszych, lub niezaktualizowanych mapach podawana jest wysokość 933 m.'),
(11, 11, 'Skrzyczne (1257 m n.p.m.) – najwyższy szczyt w grupie górskiej Beskidu Śląskiego w Zewnętrznych Karpatach Zachodnich w Polsce. Jako najwyższy szczyt Beskidu Śląskiego Skrzyczne należy do Korony Gór Polski.\r\n\r\nSkrzyczne wznosi się w północno-wschodniej części Beskidu Śląskiego, w bocznym ramieniu pasma Baraniej Góry, odgałęziającym się od głównego pnia pasma w Malinowskiej Skale. Ramię to, które właściwie tworzy masyw Skrzycznego i Małego Skrzycznego, oddziela dolinę górnego toku Żylicy od Kotliny Żywieckiej. Ze względu na charakterystyczną sylwetkę góry, stromo opadającej ku wschodowi i północy oraz na położony na szczycie maszt nadajnika RTV jest ona łatwo rozpoznawalna z wielu miejsc, np. w Beskidzie Żywieckim lub w Tatrach.'),
(12, 12, 'Łysica (potocznie Góra Świętej Katarzyny) – najwyższy szczyt Gór Świętokrzyskich o wysokości 614 m n.p.m.. Znajduje się w zachodniej części Łysogór, na południowy wschód od wsi Święta Katarzyny. Należy do Korony Gór Polski, jest jej najniższym szczytem. Znajduje się w obszarze ochrony ścisłej Świętokrzyskiego Parku Narodowego.\r\n\r\nGóra ma dwa wierzchołki. Wschodni wierzchołek, nazywany Skałą Agaty lub Zamczyskiem, wznosi się na wysokość 614 m n.p.m. Jest to skalna grań (wychodnia kwarcytów) o długości około pół kilometra. Na nieznacznie niższym wierzchołku zachodnim (613 m n.p.m.) znajduje się replika pamiątkowego krzyża z 1930 r. oraz nieliczne pozostałości wieży triangulacyjnej. Z tego miejsca roztacza się ograniczony widok w kierunku północnym – na Górę Miejską i Psarską. Wierzchołki oddalone są od siebie o około 700 m.'),
(13, 13, 'Biskupia Kopa to najwyższy szczyt Gór Opawskich wchodzący w skład Korony Gór Polski. Leży w najdalej na wschód wysuniętym paśmie polskich Sudetów, przez którego wierzchołek przebiega granica polsko-czeska. Na szczycie znajduje się 18 metrowa murowana wieża widokowa wybudowana w 1898 roku, należąca do naszych południowych sąsiadów, podobnie jak i niewielka baza gastronomiczna z ławkami i stołami.'),
(14, 14, 'Ślęża to najwyższy szczyt leżący w Masywie Ślęży na Przedgórzu Sudeckim, na północ od właściwych Sudetów. Jest jednym z najniższych szczytów należących do Korony Gór Polski. Wierzchołek Ślęży stanowi ogromna polana, na której stoi zabytkowy kościół pw. Nawiedzenia NMP, schronisko Dom Turysty PTTK Góra Ślęża oraz betonowa wieża widokowa. Jest tu również wieża Radiowo – Telewizyjnego Centrum Nadawczego, a także wiata turystyczna i kilka miejsc na ognisko.'),
(15, 15, 'Kowadło to najwyższy szczyt Gór Złotych leżący na terenie Śnieżnickiego Parku Krajobrazowego w Sudetach Wschodnich zaliczany do Korony Gór Polski. Grzbietem Gór Złotych przebiega granica Polski z Czechami. Wierzchołek Kowadła stanowi niewielka polana nie zapewniająca zbyt wielu widoków. Nieco poniżej szczytu znajduje się punkt widokowy z panoramą na pobliskie Bielice, Góry Złote i Bialskie.'),
(16, 16, 'Rudawiec reprezentuje w Koronie Gór Polski najwyższy szczyt Gór Bialskich zgodnie z ustaloną w 1997 roku listą najwyższych szczytów w poszczególnych pasmach polskich gór. Góry Bialskie leżą w Sudetach Wschodnich i uznawane są za najbardziej dziką część Sudetów. Wraz z Górami Złotymi wchodzą w skład Śnieżnickiego Parku Krajobrazowego. Kopuła szczytowa jest zalesiona, przebiega tędy granica polsko-czeska.'),
(17, 17, 'Śnieżnik to najwyższy szczyt Masywu Śnieżnika, drugiego pod względem wysokości pasma polskich Sudetów. Należy do Korony Gór Polski i leży w Sudetach Zachodnich. Przez wierzchołek przebiega granica polsko-czeska, łączą się tu granice krain historycznych Śląska, Czech i Moraw. We wrześniu 2022 roku na szczycie nastąpiło uroczyste otwarcie nowej wieży widokowej, z której dostrzec można Śnieżkę w Karkonoszach, Góry Orlickie, Bialskie, Złote, Bystrzyckie, a także Opawskie.\r\n\r\nSzlaki turystyczne:\r\nNa Śnieżnik prowadzą szlaki zarówno z polskiej jak i czeskiej strony. Do najpopularniejszych należą trasy z Międzygórza i Kletna, prowadzące przez Schronisko PTTK „Na Śnieżniku”. Dłuższy, biegnący wzdłuż granicy rozpoczyna się w Czechach w miejscu zwanym Pod Klepáčem i prowadzi przez Trójmorski Wierch, Puchacz i Mały Śnieżnik.'),
(18, 18, 'Jagodna to najwyższy szczyt Gór Bystrzyckich, których niewielka południowa część przynależy do Czech. Pasmo to znajduje się w Sudetach Środkowych i jest jednym z niższych. Na szczycie znajduje się wybudowana w 2019 roku 23 metrowa wieża widokowa, wiata ze stołem i ławkami, a także dwa inne miejsca na odpoczynek. Obszar szczytowy jest sporej wielkości polaną. Szczyt ten jest jednym z najłatwiej dostępnych w Koronie Gór Polski.'),
(19, 19, 'Orlica uznawana jest za najwyższy szczyt polskiej części Gór Orlickich i równocześnie jest najwyższym szczytem polskich Sudetów Środkowych. Góry Orlickie w większości leżą na terenie Czech, a do Polski należy jedynie niewielki północny fragment. Przez wierzchołek przechodzi granica, a sam szczyt znajduje się tuż przy granicy po stronie czeskiej. Na szczycie stoi postument upamiętniający wizytę trzech sławnych osób: Cesarza Józefa II, Prezydenta USA Quinctego Adamsa oraz Fryderyka Chopina, a także tabliczka z polską i czeską nazwą szczytu. Poniżej szczytu wybudowano w 2021 roku 25,5 metrową wieżę widokową. Szczyt należy do Korony Gór Polski.'),
(20, 20, 'Szczeliniec Wielki to najwyższy szczyt Gór Stołowych położony w środkowej części Sudetów na terenie Parku Narodowego Gór Stołowych.  Góry Stołowe to jedyne góry w Polsce o płytowej budowie z formami skalnymi wyrzeźbionymi w piaskowcu przez naturę. Najwyższy punkt znajduje się na płatnej trasie turystycznej skalnego labiryntu. Trasa wiedzie kładkami, kamiennymi i metalowymi schodami wprost na najwyższej położoną platformę widokową Szczelińca Wielkiego nazwaną od formacji skalnej Tronem Liczyrzepy lub Fotelem Pradziada. Szczyt należy do jednych z najciekawszych w Koronie Gór Polski.'),
(21, 21, 'Wielka Sowa to najwyższy szczyt Gór Sowich należący do pasma Sudetów Środkowych. Z wybudowanej na szczycie w 1906 roku murowanej wieży widokowej rozpościera się wyjątkowo malowniczy krajobraz. Obok wieży na polanie znajdują się dwa zadaszone miejsca na ognisko, wieża przekaźnikowa, kapliczka, a także punkt gastronomiczny. Ozdobą szczytu są rzeźby trzech sówek i muflona. Wielka Sowa jest najniższym ze szczytów Korony Gór Polski wznoszącym się powyżej 1000 m n.p.m.'),
(22, 22, 'Waligóra to najwyższy szczyt Gór Kamiennych zwanych często sudeckimi Tatrami, których cechą charakterystyczną są wyjątkowo strome zbocza i głębokie doliny. Zajmuje 10 miejsce spośród 14 szczytów do wysokości 1000 m n.p.m. należących do Korony Gór Polski. Leży w Sudetach Środkowych na terenie Parku Krajobrazowego Sudetów Wałbrzyskich.'),
(23, 23, 'Chełmiec to szczyt reprezentujący w Koronie Gór Polski Góry Wałbrzyskie. Najnowsze pomiary pokazały, że jego wysokość stawia go na drugim miejscu po nieco wyższej Borowej. Zgodnie z przyjętym zestawieniem szczytów z 1997 roku pozostaje jednak na liście szczytów KGP. Szczyt położony jest w środkowej części Sudetów. Na jego wierzchołku znajduje się wybudowana w latach 1887-88 murowana wieża widokowa, maszt telekomunikacyjny o wysokości 69 m, a także wiata turystyczna i miejsce na ognisko.'),
(24, 24, 'Skalnik to najwyższy szczyt Rudaw Janowickich położony w ich południowej części w Sudetach Zachodnich należący do Korony Gór Polski. Kopuła szczytowa jest zalesiona, dlatego też, aby móc podziwiać piękną panoramę Sudetów warto wejść na platformę widokową usytuowaną na nieco niższej Ostrej Małej, uznawanej za drugi wierzchołek Skalnika.'),
(25, 25, 'Skopiec to jeden z trzech najwyższych szczytów w Górach Kaczawskich, należący do Korony Gór Polski zgodnie z ustaloną, przez dwóch geografów dr hab. Marka Więckowskiego i dr Wojciecha Lewandowskiego, w 1997 roku listą najwyższych szczytów w poszczególnych pasmach polskich gór. Według nowych pomiarów najwyższym szczytem jest Okole (725 m n.p.m.). Góry Kaczawskie wraz z Pogórzem Kaczawskimi to najniższe pasmo w całych Sudetach. Skopiec jest szczytem niewielkim i zalesionym, nieoferującym zbyt wielu widoków.'),
(26, 26, 'Śnieżka to najwyższy szczyt Karkonoszy i zarazem najwyższy szczyt Sudetów. Leży w Sudetach Zachodnich, a przez jej wierzchołek przebiega granica polsko-czeska. Jest równocześnie najwyższym szczytem górskim Czech. Na szczycie znajduje się wybudowane w latach 1966 – 1974 Obserwatorium Meteorologiczne, a także pochodząca z XVII wieku kaplica Św. Wawrzyńca, budynek czeskiej poczty z niewielkim bufetem i stacja czeskiej kolejki gondolowej.'),
(27, 27, 'Wysoka Kopa to najwyższy szczyt Gór Izerskich w polskiej części Sudetów i niewątpliwie najdalej na zachód wysunięty szczyt należący do Korony Gór Polski. Kopuła szczytowa jest zalesiona i nie prowadzi do niej żaden oznakowany szlak turystyczny.'),
(28, 28, 'Kłodzka Góra to szczyt reprezentujący w Koronie Gór Polski Góry Bardzkie, zgodnie z przyjętym zestawieniem szczytów z 1997 roku. Szczyt położony jest w południowo – wschodniej części Gór Bardzkich w Sudetach. Pomiary pokazały, że jego wysokość stawia go na drugim miejscu po nieco wyższej, znajdującej się niespełna 500 metrów dalej, Szerokiej Górze, na którą jednak nie prowadzi oznakowany szlak turystyczny. Na Kłodzkiej Górze znajduje się 35 metrowa wieża widokowa, której budowę zakończono w sierpniu 2020 roku. W 2022 roku ustawiono wiatę turystyczną z ławkami i stołem. Jest również miejsce na ognisko.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczyty`
--

CREATE TABLE `szczyty` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(30) DEFAULT NULL,
  `wysokosc` int(10) UNSIGNED DEFAULT NULL,
  `pasmo` varchar(50) DEFAULT NULL,
  `lokator` varchar(10) DEFAULT NULL,
  `plik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `szczyty`
--

INSERT INTO `szczyty` (`id`, `nazwa`, `wysokosc`, `pasmo`, `lokator`, `plik`) VALUES
(1, 'Rysy', 2499, 'Tatry', 'KN09BE', 'rysy.jpg'),
(2, 'Tarnica', 1346, 'Bieszczady', 'KN19IB', 'tarnica.jpg'),
(3, 'Lackowa', 997, 'Beskid Niski', 'KN09NK', 'lackowa.jpg'),
(4, 'Radziejowa', 1262, 'Beskid Sądecki', 'KN09HK', 'gora.jpg'),
(5, 'Wysoka', 1050, 'Pieniny', 'KN09GJ', 'wysoka.jpg'),
(6, 'Mogielica', 1173, 'Beskid Wyspowy', 'KN09DP', 'mogielica.jpg'),
(7, 'Turbacz', 1310, 'Gorce', 'KN09BN', 'turbacz.jpg'),
(8, 'Lubomir', 912, 'Beskid Makowski', 'KN09AS', 'gora.jpg'),
(9, 'Babia Góra', 1725, 'Beskid Żywiecki', 'JN99SN', 'babiagora.jpg'),
(10, 'Czupel', 933, 'Beskid Mały', 'JN99OS', 'gora.jpg'),
(11, 'Skrzyczne', 1257, 'Beskid Śląski', 'JN99MQ', 'gora.jpg'),
(12, 'Łysica', 612, 'Góry Świętokrzyskie', 'KO00KV', 'gora.jpg'),
(13, 'Biskupia Kopa', 889, 'Góry Opawskie', 'JO80RG', 'gora.jpg'),
(14, 'Ślęża', 718, 'Masyw Ślęży', 'JO80IU', 'sleza.jpg'),
(15, 'Kowadło', 989, 'Góry Złote', 'JO80MG', 'gora2.jpg'),
(16, 'Rudawiec', 1112, 'Góry Bialskie', 'JO80LF', 'gora2.jpg'),
(17, 'Śnieżnik', 1425, 'Masyw Śnieżnika', 'JO80KE', 'gora2.jpg'),
(18, 'Jagodna', 977, 'Góry Bystrzyckie', 'JO80GG', 'gora2.jpg'),
(19, 'Orlica', 1084, 'Góry Orlickie', 'JO80EI', 'gora.jpg'),
(20, 'Szczeliniec Wielki', 919, 'Góry Stołowe', 'JO80EL', 'szczeliniec.jpg'),
(21, 'Wielka Sowa', 1015, 'Góry Sowie', 'JO80FQ', 'gora.jpg'),
(22, 'Waligóra', 936, 'Góry Kamienne', 'JO80DQ', 'gora.jpg'),
(23, 'Chełmiec', 851, 'Góry Wałbrzyskie', 'JO80DR', 'gora2.jpg'),
(24, 'Skalnik', 945, 'Rudawy Janowickie', 'JO70WT', 'gora.jpg'),
(25, 'Skopiec', 724, 'Góry Kaczawskie', 'JO70WW', 'gora2.jpg'),
(26, 'Śnieżka', 1602, 'Karkonosze', 'JO70UR', 'sniezka.jpg'),
(27, 'Wysoka Kopa', 1126, 'Gory Izerskie', 'JO70RU', 'wysokakopa.jpg'),
(28, 'Kłodzka Góra', 765, 'Góry Bardzkie', 'JO80JK', 'gora.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `opis`
--
ALTER TABLE `opis`
  ADD PRIMARY KEY (`id`,`szczyty_id`),
  ADD KEY `szczyty_id` (`szczyty_id`);

--
-- Indeksy dla tabeli `szczyty`
--
ALTER TABLE `szczyty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `opis`
--
ALTER TABLE `opis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `szczyty`
--
ALTER TABLE `szczyty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `opis`
--
ALTER TABLE `opis`
  ADD CONSTRAINT `opis_ibfk_1` FOREIGN KEY (`szczyty_id`) REFERENCES `szczyty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
