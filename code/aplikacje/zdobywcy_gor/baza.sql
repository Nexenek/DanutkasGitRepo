-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Cze 2020, 22:57
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
-- Baza danych: `zdobywcy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gory`
--

CREATE TABLE `gory` (
  `id_gory` int(11) NOT NULL,
  `pasmo` text COLLATE utf8_polish_ci NOT NULL,
  `nazwa_gory` text COLLATE utf8_polish_ci NOT NULL,
  `wysokosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gory`
--

INSERT INTO `gory` (`id_gory`, `pasmo`, `nazwa_gory`, `wysokosc`) VALUES
(1, 'Beskid Makowiecki', 'Mędralowa', 1169),
(2, 'Beskid Makowiecki', 'Jałowiec', 1111),
(3, 'Beskid Makowiecki', 'Czerniawa Sucha', 1062),
(4, 'Beskid Makowiecki', 'Lachów Groń', 1045),
(5, 'Beskid Makowiecki', 'Mała Mędralowa', 1042),
(6, 'Beskid Makowiecki', 'Mędralowa Zachodnia', 1024),
(7, 'Beskid Mały', 'Czupel', 934),
(8, 'Beskid Mały', 'Łamana Skała (błędne: Madohora)', 929),
(9, 'Beskid Mały', 'Leskowiec', 918),
(10, 'Beskid Mały', 'Magurka Wilkowicka', 909),
(11, 'Beskid Mały', 'Wielki Cisownik', 853),
(12, 'Beskid Mały', 'Groniczki', 839),
(13, 'Beskid Mały', 'Kiczera', 831),
(14, 'Beskid Mały', 'Chrobacza Łąka', 830),
(15, 'Beskid Mały', 'Gaiki', 808),
(16, 'Beskid Mały', 'Żar', 761),
(17, 'Beskid Mały', 'Bukowski Groń', 729),
(18, 'Beskid Niski', 'Lackowa', 997),
(19, 'Beskid Niski', 'Ostry Wierch', 938),
(20, 'Beskid Niski', 'Biała Skała', 903),
(21, 'Beskid Niski', 'Jaworzyna Konieczniańska', 881),
(22, 'Beskid Niski', 'Jaworzynka', 869),
(23, 'Beskid Niski', 'Kamień nad Jaśliskami', 857),
(24, 'Beskid Niski', 'Wielki Bukowiec (Pasika)', 848),
(25, 'Beskid Niski', 'Kozie Żebro', 847),
(26, 'Beskid Niski', 'Wątkowa', 846),
(27, 'Beskid Sądecki', 'Radziejowa', 1262),
(28, 'Beskid Sądecki', 'Złomisty Wierch', 1226),
(29, 'Beskid Sądecki', 'Mała Radziejowa', 1207),
(30, 'Beskid Sądecki', 'Wielka Przehyba', 1191),
(31, 'Beskid Sądecki', 'Wielki Rogacz', 1182),
(32, 'Beskid Sądecki', 'Przehyba', 1175),
(33, 'Beskid Sądecki', 'Skałka', 1163),
(34, 'Beskid Sądecki', 'Mały Rogacz', 1162),
(35, 'Beskid Sądecki', 'Jasiennik', 1128),
(36, 'Beskid Sądecki', 'Czeremcha', 1124),
(37, 'Beskid Sądecki', 'Zgrzypy', 1120),
(38, 'Beskid Sądecki', 'Jaworzyna Krynicka', 1114),
(39, 'Beskid Sądecki', 'Wielka Bukowa', 1104),
(40, 'Beskid Śląski', 'Skrzyczne', 1257),
(41, 'Beskid Śląski', 'Barania Góra', 1220),
(42, 'Beskid Śląski', 'Małe Skrzyczne', 1211),
(43, 'Beskid Śląski', 'Kopa Skrzyczeńska', 1189),
(44, 'Beskid Śląski', 'Zielony Kopiec', 1152),
(45, 'Beskid Śląski', 'Malinowska Skała', 1152),
(46, 'Beskid Śląski', 'Magurka Wiślańska', 1140),
(47, 'Beskid Śląski', 'Klimczok', 1117),
(48, 'Beskid Śląski', 'Malinów', 1114),
(49, 'Beskid Śląski', 'Magura', 1109),
(50, 'Beskid Śląski', 'Magurka Radziechowska', 1091),
(51, 'Beskid Śląski', 'Trzy Kopce', 1081),
(52, 'Beskid Śląski', 'Cebula', 1035),
(53, 'Beskid Śląski', 'Stołów', 1035),
(54, 'Beskid Śląski', 'Glinne', 1034),
(55, 'Beskid Śląski', 'Szyndzielnia', 1028),
(56, 'Beskid Śląski', 'Przysłop', 1028),
(57, 'Beskid Śląski', 'Kościelec', 1022),
(58, 'Beskid Śląski', 'Skałka', 1020),
(59, 'Beskid Śląski', 'Murońka', 1021),
(60, 'Beskid Śląski', 'Przypór', 1008),
(61, 'Beskid Wyspowy', 'Mogielica', 1170),
(62, 'Beskid Wyspowy', 'Ćwilin', 1072),
(63, 'Beskid Wyspowy', 'Jasień', 1062),
(64, 'Beskid Wyspowy', 'Modyń', 1029),
(65, 'Beskid Wyspowy', 'Luboń Wielki', 1022),
(66, 'Beskid Wyspowy', 'Krzystonów', 1012),
(67, 'Beskid Wyspowy', 'Śnieżnica', 1006),
(68, 'Beskid Wyspowy', 'Szczebel', 977),
(69, 'Beskid Wyspowy', 'Lubogoszcz', 967),
(70, 'Beskid Wyspowy', 'Łopień', 951),
(71, 'Beskid Wyspowy', 'Cichoń', 929),
(72, 'Beskid Wyspowy', 'Ostra', 928),
(73, 'Beskid Wyspowy', 'Jaworz', 921),
(74, 'Beskid Żywiecki', 'Babia Góra (Diablak)', 1725),
(75, 'Beskid Żywiecki', 'Gówniak', 1617),
(76, 'Beskid Żywiecki', 'Pilsko', 1542),
(77, 'Beskid Żywiecki', 'Kępa', 1521),
(78, 'Beskid Żywiecki', 'Mała Babia Góra (Cyl)', 1517),
(79, 'Beskid Żywiecki', 'Polica', 1369),
(80, 'Beskid Żywiecki', 'Sokolica', 1367),
(81, 'Beskid Żywiecki', 'Romanka', 1366),
(82, 'Beskid Żywiecki', 'Munczolik (Szczawina)', 1356),
(83, 'Beskid Żywiecki', 'Palenica', 1338),
(84, 'Beskid Żywiecki', 'Lipowski Wierch', 1324),
(85, 'Beskid Żywiecki', 'Rysianka', 1322),
(86, 'Beskid Żywiecki', 'Czyrniec', 1318),
(87, 'Beskid Żywiecki', 'Cyl Hali Śmietanowej (Kiczorka)', 1298),
(88, 'Beskid Żywiecki', 'Boraczy Wierch', 1244),
(89, 'Beskid Żywiecki', 'Złota Grapa', 1247),
(90, 'Beskid Żywiecki', 'Okrąglica', 1239),
(91, 'Beskid Żywiecki', 'Wielka Racza', 1236),
(92, 'Beskid Żywiecki', 'Wielka Rycerzowa', 1226),
(93, 'Bieszczady', 'Tarnica', 1346),
(94, 'Bieszczady', 'Krzemień', 1335),
(95, 'Bieszczady', 'Halicz', 1333),
(96, 'Bieszczady', 'Kopa Bukowska', 1320),
(97, 'Bieszczady', 'Szeroki Wierch (Tarniczka)', 1315),
(98, 'Bieszczady', 'Bukowe Berdo', 1311),
(99, 'Bieszczady', 'Wielka Rawka', 1307),
(100, 'Bieszczady', 'Połonina Caryńska (Kruhly Wierch)', 1297),
(101, 'Bieszczady', 'Rozsypaniec', 1280),
(102, 'Bieszczady', 'Mała Rawka', 1272),
(103, 'Bieszczady', 'Połonina Wetlińska (Roh)', 1255),
(104, 'Bieszczady', 'Kińczyk Bukowski', 1251),
(105, 'Bieszczady', 'Wołowy Garb', 1248),
(106, 'Bieszczady', 'Smerek', 1222),
(107, 'Bieszczady', 'Krzemieniec (Kremenaros)', 1221),
(108, 'Bieszczady', 'Kamienna', 1201),
(109, 'Bieszczady', 'Riaba Skała', 1199),
(110, 'Bieszczady', 'Paportna', 1198),
(111, 'Bieszczady', 'Dziurkowiec', 1189),
(112, 'Bieszczady', 'Hrubki', 1186),
(113, 'Bieszczady', 'Płasza', 1163),
(114, 'Bieszczady', 'Jasło', 1153),
(115, 'Gorce', 'Turbacz', 1310),
(116, 'Gorce', 'Jaworzyna Kamienicka', 1288),
(117, 'Gorce', 'Kiczora', 1282),
(118, 'Gorce', 'Kudłoń', 1274),
(119, 'Gorce', 'Czoło Turbacza', 1259),
(120, 'Gorce', 'Mostownica', 1251),
(121, 'Gorce', 'Gorc Troszacki', 1235),
(122, 'Gorce', 'Gorc', 1228),
(123, 'Gorce', 'Lubań', 1225),
(124, 'Góry Bardzkie', 'Szeroka Góra', 765),
(125, 'Góry Bardzkie', 'Kłodzka Góra', 763),
(126, 'Góry Bardzkie', 'Ostra Góra', 751),
(127, 'Góry Bardzkie', 'Wilczak', 637),
(128, 'Góry Bardzkie', 'Bardzka Góra (Kalwaria)', 583),
(129, 'Góry Bialskie', 'Postawna', 1124),
(130, 'Góry Bialskie', 'Rudawiec', 1112),
(131, 'Góry Bialskie', 'Iwinka', 1076),
(132, 'Góry Bystrzyckie', 'Jagodna', 977),
(133, 'Góry Bystrzyckie', 'Sasanka', 965),
(134, 'Góry Bystrzyckie', '(brak nazwy)', 949),
(135, 'Góry Bystrzyckie', 'Łomnicka Równia', 898),
(136, 'Góry Bystrzyckie', 'Czerniec', 891),
(137, 'Góry Bystrzyckie', 'Anielska Kopa', 871),
(138, 'Góry Bystrzyckie', 'Smolna', 869),
(139, 'Góry Izerskie', 'Wysoka Kopa', 1126),
(140, 'Góry Izerskie', 'Smrek', 1123),
(141, 'Góry Izerskie', 'Stóg Izerski', 1107),
(142, 'Góry Izerskie', 'Wysoki Kamień', 1058),
(143, 'Góry Izerskie', 'Zwalisko', 1047),
(144, 'Góry Karczewskie', 'Skopiec', 724),
(145, 'Góry Karczewskie', 'Baraniec', 723),
(146, 'Góry Karczewskie', 'Okole', 721),
(147, 'Góry Karczewskie', 'Maślak', 720),
(148, 'Góry Karczewskie', 'Łysa Góra', 708),
(149, 'Góry Karczewskie', 'Turzec', 690),
(150, 'Góry Karczewskie', 'Poręba', 671),
(151, 'Góry Karczewskie', 'Połom', 667),
(152, 'Góry Kamienne', 'Waligóra', 936),
(153, 'Góry Kamienne', 'Suchawa', 928),
(154, 'Góry Kamienne', 'Kostrzyna', 906),
(155, 'Góry Kamienne', 'Włostowa', 903),
(156, 'Góry Kamienne', 'Jeleniec', 902),
(157, 'Góry Kamienne', 'Bukowiec', 898),
(158, 'Góry Kamienne', 'Turzyna', 895),
(159, 'Góry Kamienne', 'Ruprechticki Szpicak', 870),
(160, 'Góry Kamienne', 'Rogowiec', 870),
(161, 'Góry Kamienne', 'Czarnek', 868),
(162, 'Góry Kamienne', 'Klin', 866),
(163, 'Góry Kamienne', 'Lesista Wielka', 851),
(164, 'Góry Opawskie', 'Biskupia Kopa', 889),
(165, 'Góry Opawskie', 'Srebrna Kopa', 785),
(166, 'Góry Opawskie', 'Zamkowa Góra', 571),
(167, 'Góry Opawskie', 'Szyndzielowa Kopa', 533),
(168, 'Góry Orlickie', 'Orlica', 1084),
(169, 'Góry Sowie', 'Wielka Sowa', 1015),
(170, 'Góry Sowie', 'Mała Sowa', 972),
(171, 'Góry Sowie', 'Kalenica', 964),
(172, 'Góry Sowie', 'Słoneczna', 960),
(173, 'Góry Sowie', 'Grabina', 943),
(174, 'Góry Sowie', 'Kozia Równia', 930),
(175, 'Góry Sowie', 'Sokolica', 915),
(176, 'Góry Sowie', 'Rymarz', 913),
(177, 'Góry Stołowe', 'Szczeliniec Wielki', 919),
(178, 'Góry Stołowe', 'Skalniak', 915),
(179, 'Góry Stołowe', 'Szczeliniec Mały', 895),
(180, 'Góry Stołowe', 'Narożnik', 851),
(181, 'Góry Stołowe', 'Błędne Skały', 850),
(182, 'Góry Świętokrzyskie', 'Łysica – Skała Agaty', 614),
(183, 'Góry Świętokrzyskie', 'Łysica – wierzchołek zachodni', 613),
(184, 'Góry Świętokrzyskie', 'Łysa Góra', 595),
(185, 'Góry Świętokrzyskie', 'Szczytniak', 554),
(186, 'Góry Świętokrzyskie', 'Księża Skała', 550),
(187, 'Góry Świętokrzyskie', 'Góra Jeleniowska', 533),
(188, 'Góry Wałbrzyskie', 'Borowa', 854),
(189, 'Góry Wałbrzyskie', 'Chełmiec', 851),
(190, 'Góry Wałbrzyskie', 'Trójgarb', 778),
(191, 'Góry Złote', 'Kowadło', 989),
(192, 'Karkonosze', 'Śnieżka', 1603),
(193, 'Karkonosze', 'Wielki Szyszak', 1509),
(194, 'Karkonosze', 'Smogornia', 1489),
(195, 'Karkonosze', 'Łabski Szczyt', 1471),
(196, 'Karkonosze', 'Mały Szyszak', 1439),
(197, 'Karkonosze', 'Śmielec', 1424),
(198, 'Karkonosze', 'Czeskie Kamienie', 1416),
(199, 'Karkonosze', 'Śląskie Kamienie', 1413),
(200, 'Karkonosze', 'Czarna Kopa', 1407),
(201, 'Karkonosze', 'Tępy Szczyt', 1387),
(202, 'Karkonosze', 'Kopa', 1377),
(203, 'Karkonosze', 'Szrenica', 1362),
(204, 'Masyw Ślęży', 'Ślęża', 718),
(205, 'Masyw Ślęży', 'Radunia', 573),
(206, 'Masyw Ślęży', 'Wieżyca', 415),
(207, 'Pieniny', 'Wysoka', 1050),
(208, 'Pieniny', 'Smerekowa', 1013),
(209, 'Pieniny', 'Trzy Korony', 982),
(210, 'Pieniny', 'Wierchliczka', 964),
(211, 'Pieniny', 'Watrisko', 960),
(212, 'Pieniny', 'Durbaszka', 942),
(213, 'Pieniny', 'Borsuczyny', 939),
(214, 'Pieniny', 'Nowa Góra', 902),
(215, 'Pieniny', 'Wysoki Wierch', 899),
(216, 'Masyw Śnieżnika', 'Śnieżnik', 1425),
(217, 'Masyw Śnieżnika', 'Mały Śnieżnik', 1318),
(218, 'Masyw Śnieżnika', 'Czarna Góra', 1205),
(219, 'Masyw Śnieżnika', 'Trójmorski Wierch', 1145),
(220, 'Pogórze Ciężkowickie', 'Liwocz', 562),
(221, 'Pogórze Ciężkowickie', 'Brzanka', 534),
(222, 'Rudawy Janowickie', 'Skalnik', 945),
(223, 'Rudawy Janowickie', 'Dzicza Góra', 891),
(224, 'Rudawy Janowickie', 'Wołek', 878),
(225, 'Rudawy Janowickie', 'Wielka Kopa', 871),
(226, 'Rudawy Janowickie', 'Bielec', 871),
(227, 'Rudawy Janowickie', 'Rudnik', 853),
(228, 'Rudawy Janowickie', 'Bobrzak', 839),
(229, 'Tatry', 'Rysy', 2499),
(230, 'Tatry', 'Mięguszowiecki Szczyt', 2438),
(231, 'Tatry', 'Niżnie Rysy', 2430),
(232, 'Tatry', 'Mięguszowiecki Szczyt Czarny', 2410),
(233, 'Tatry', 'Mięguszowiecki Szczyt Pośredni', 2393),
(234, 'Tatry', 'Hińczowa Turnia', 2377),
(235, 'Tatry', 'Cubryna', 2376),
(236, 'Tatry', 'Wołowa Turnia', 2373),
(237, 'Tatry', 'Żabia Turnia Mięguszowiecka', 2336),
(238, 'Tatry', 'Świnica', 2301),
(239, 'Tatry', 'Kozi Wierch', 2291),
(240, 'Tatry', 'Żabi Koń', 2291),
(241, 'Tatry', 'Gąsienicowa Turnia', 2280),
(242, 'Tatry', 'Kozie Czuby', 2266),
(243, 'Tatry', 'Niebieska Turnia', 2262),
(244, 'Tatry', 'Żabi Szczyt Wyżni', 2259),
(245, 'Tatry', 'Spadowa Kopa', 2252),
(246, 'Tatry', 'Zawratowa Turnia', 2247),
(247, 'Tatry', 'Buczynowa Strażnica', 2242),
(248, 'Tatry', 'Czarne Ściany', 2242),
(249, 'Tatry', 'Zadni Granat', 2240),
(250, 'Tatry', 'Pośredni Granat', 2234),
(251, 'Tatry', 'Miedziane', 2233),
(252, 'Tatry', 'Mały Kozi Wierch', 2228),
(253, 'Tatry', 'Skrajny Granat', 2225),
(254, 'Tatry', 'Wielka Koszysta', 2193),
(255, 'Tatry', 'Waksmundzki Wierch', 2189),
(256, 'Tatry', 'Wielka Buczynowa Turnia', 2182),
(257, 'Tatry', 'Zamarła Turnia', 2179),
(258, 'Tatry', 'Starorobociański Wierch', 2176),
(259, 'Tatry', 'Orla Baszta', 2175),
(260, 'Tatry', 'Mała Buczynowa Turnia', 2172),
(261, 'Tatry', 'Szpiglasowy Wierch', 2172),
(262, 'Tatry', 'Zadni Mnich', 2172),
(263, 'Tatry', 'Zadni Kościelec', 2162),
(264, 'Tatry', 'Kazalnica Mięguszowiecka', 2159),
(265, 'Tatry', 'Walentkowy Wierch', 2156),
(266, 'Tatry', 'Wielki Wołoszyn', 2155),
(267, 'Tatry', 'Kościelec', 2155),
(268, 'Tatry', 'Żabi Mnich', 2146),
(269, 'Tatry', 'Mały Wołoszyn', 2145),
(270, 'Tatry', 'Ciemnosmreczyńska Turnia', 2142),
(271, 'Tatry', 'Jarząbczy Wierch', 2137),
(272, 'Tatry', 'Wierch pod Fajki', 2135),
(273, 'Tatry', 'Pośrednia Turnia', 2128),
(274, 'Tatry', 'Buczynowe Czuby', 2126),
(275, 'Tatry', 'Kamienista', 2126),
(276, 'Tatry', 'Krzesanica', 2123),
(277, 'Tatry', 'Pośredni Wołoszyn', 2117),
(278, 'Tatry', 'Opalony Wierch', 2115),
(279, 'Tatry', 'Kołowa Czuba', 2105),
(280, 'Tatry', 'Żabi Szczyt Niżni', 2098),
(281, 'Tatry', 'Skrajna Turnia', 2097),
(282, 'Tatry', 'Ciemniak', 2096),
(283, 'Tatry', 'Małołączniak', 2096),
(284, 'Tatry', 'Żabia Lalka', 2095),
(285, 'Tatry', 'Skrajny Wołoszyn', 2092),
(286, 'Tatry', 'Mnichowa Kopa', 2090),
(287, 'Tatry', 'Żółta Turnia', 2087),
(288, 'Tatry', 'Wyżni Kostur', 2083),
(289, 'Tatry', 'Żabia Czuba', 2080),
(290, 'Tatry', 'Mnich', 2068),
(291, 'Tatry', 'Smreczyński Wierch', 2068),
(292, 'Tatry', 'Gładki Wierch', 2065),
(293, 'Tatry', 'Wołowiec', 2064),
(294, 'Tatry', 'Niżni Kostur', 2055),
(295, 'Tatry', 'Mniszek', 2045),
(296, 'Tatry', 'Mała Koszysta', 2014),
(297, 'Tatry', 'Beskid', 2012),
(298, 'Tatry', 'Kopa Kondracka', 2005),
(299, 'Tatry', 'Kończysty Wierch', 2002),
(300, 'Wyżyna Krakowsko-Częstochowska', 'Góra Janowskiego (Zamkowa)', 516),
(301, 'Wyżyna Krakowsko-Częstochowska', 'Skałka 502 (Grodzisko)', 513),
(302, 'Wyżyna Krakowsko-Częstochowska', 'Wielka Skała', 513),
(303, 'Wyżyna Krakowsko-Częstochowska', 'Straszykowa Góra', 500),
(304, 'Wyżyna Krakowsko-Częstochowska', 'Łysa', 492),
(305, 'Wyżyna Śląska', 'Góra Świętej Anny', 408),
(306, 'Wzgórza Niemczańsko-Strzelińskie', 'Działynia', 473),
(307, 'Wzgórza Niemczańsko-Strzelińskie', 'Wrona', 458),
(308, 'Wzgórza Niemczańsko-Strzelińskie', 'Orzeł', 458),
(309, 'Tatry', 'Beskid', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osiagniecia`
--

CREATE TABLE `osiagniecia` (
  `id_osiagniecia` int(11) NOT NULL,
  `gora_id` int(11) NOT NULL,
  `osoba_id` int(11) NOT NULL,
  `data_zdobycia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `osiagniecia`
--

INSERT INTO `osiagniecia` (`id_osiagniecia`, `gora_id`, `osoba_id`, `data_zdobycia`) VALUES
(1, 221, 1, '2020-06-13'),
(2, 221, 2, '2020-06-13'),
(3, 221, 3, '2020-06-13'),
(4, 185, 4, '2020-06-14'),
(5, 185, 5, '2020-06-14'),
(6, 184, 6, '2020-06-20'),
(7, 184, 7, '2020-06-20'),
(8, 182, 1, '2020-06-21'),
(9, 182, 2, '2020-06-21'),
(10, 22, 3, '2020-06-27'),
(11, 22, 1, '2020-06-27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id_osoby` int(11) NOT NULL,
  `nazwisko` text COLLATE utf8_polish_ci NOT NULL,
  `imie` text COLLATE utf8_polish_ci NOT NULL,
  `funkcja` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id_osoby`, `nazwisko`, `imie`, `funkcja`, `email`) VALUES
(1, 'K.', 'Tomasz', 'przewodnik', 'k.tomasz@zdobywcyxyz.pl'),
(2, 'G.', 'Arkadiusz', 'uczestnik', 'g.arek@zdobywcyxyz.pl'),
(3, 'C.', 'Grzegorz', 'organizator', 'c.grzegorz@zdobywcyxyz.pl'),
(4, 'B.', 'Urszula', 'uczestnik', 'b.urszula@zdobywcyxyz.pl'),
(5, 'J.', 'Dariusz', 'przewodnik', 'j.dariusz@zdobywcyxyz.pl'),
(6, 'W.', 'Nataniel', 'zaopatrzeniowiec', 'w.nataniel@zdobywcyxyz.pl'),
(7, 'R.', 'Radosław', 'uczestnik', 'r.radoslaw@zdobywcyxyz.pl'),
(8, 'S.', 'Dorota', 'uczestnik', 's.dorota@zdobywcyxyz.pl'),
(9, 'Z.', 'Marian', 'przewodnik', 'z.marian@zdobywcyxyz.pl'),
(10, 'W.', 'Liliana', 'zaopatrzeniowiec', 'w.liliana@zdobywcyxyz.pl'),
(11, 'S.', 'Zuzanna', 'uczestnik', 's.zuzanna@zdobywcyxyz.pl'),
(12, 'K.', 'Krzysztof', 'ratownik', 'k.krzysztof@zdobywcyxyz.pl'),
(13, 'W.', 'Renata', 'przewodnik', 'w.renata@zdobywcyxyz.pl'),
(14, 'P.', 'Sylwester', 'uczestnik', 'p.sylwester@zdobywcyxyz.pl'),
(15, 'Z.', 'Agnieszka', 'uczestnik', 'z.agnieszka@zdobywcyxyz.pl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gory`
--
ALTER TABLE `gory`
  ADD PRIMARY KEY (`id_gory`);

--
-- Indeksy dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  ADD PRIMARY KEY (`id_osiagniecia`),
  ADD KEY `gora_id` (`gora_id`),
  ADD KEY `osoba_id` (`osoba_id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id_osoby`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `gory`
--
ALTER TABLE `gory`
  MODIFY `id_gory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  MODIFY `id_osiagniecia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id_osoby` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `osiagniecia`
--
ALTER TABLE `osiagniecia`
  ADD CONSTRAINT `osiagniecia_ibfk_1` FOREIGN KEY (`gora_id`) REFERENCES `gory` (`id_gory`),
  ADD CONSTRAINT `osiagniecia_ibfk_2` FOREIGN KEY (`osoba_id`) REFERENCES `osoby` (`id_osoby`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
