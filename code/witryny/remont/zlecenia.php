<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Remonty</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Malowanie i gipsowanie</h1>
    </header>
    <main>
        <nav>
            <a href="kontakt.html">Kontakt</a>
            <a href="https://remonty.pl" target="_blank">Partnerzy</a>
        </nav>
        <aside>
            <img src="tapeta_lewa.png" alt="usługi">
            <img src="tapeta_prawa.png" alt="usługi">
            <img src="tapeta_lewa.png" alt="usługi">
        </aside>
        <section id="lewa">
            <h2>Dla klientów</h2>
            <form action="zlecenia.php" name="klienci" method="post">
                <label for="pracownicy">Ilu co najmniej pracowników potrzebujesz?</label><br>
                <input type="number" id="pracownicy" name="pracownicy">
                <input type="submit" name="szukaj" value="Szukaj firm">
                <?php
                    $link = mysqli_connect('localhost', 'root', '', 'remonty');
                    $licz_pracownik = $_POST['pracownicy']??null;
                    if (isset($licz_pracownik)) {
                        $zap2 = "SELECT `nazwa_firmy`, `liczba_pracownikow` FROM `wykonawcy` WHERE liczba_pracownikow>=$licz_pracownik;";
                        $wynik2 = mysqli_query($link, $zap2);
                        while ($wiersz = mysqli_fetch_array($wynik2)) {
                            echo"<p>$wiersz[0], $wiersz[1] pracowników</p>";
                        }
                    }
                ?>
            </form>
        </section>
        <section id="srodek">
            <h2>Dla wykonawców</h2>
            <form action="zlecenia.php" name="wykonawcy" method="post">
            <select name="miasto">
                <?php
                $link = mysqli_connect('localhost', 'root', '', 'remonty');
                $zap3 = "SELECT DISTINCT miasto FROM klienci ORDER BY miasto ASC;";
                $wynik3 = mysqli_query($link, $zap3);
                while ($wiersz = mysqli_fetch_array($wynik3)) {
                    echo "<option value='$wiersz[0]'>$wiersz[0]</option>";
                }
                mysqli_close($link);
                ?>
            </select><br>
            <input type="radio" id="malowanie" name="usluga" value="malowanie" checked>
            <label for="malowanie">malowanie</label><br>
            <input type="radio" id="gipsowanie" name="usluga" value="gipsowanie">
            <label for="gipsowanie">gipsowanie</label><br>
            <input type="submit" name="szukaj_klientow" value="Szukaj klientów">
            </form>
            <?php
            if (isset($_POST['szukaj_klientow'])) {
                $miasto = $_POST['miasto'] ?? '';
                $usluga = $_POST['usluga'] ?? '';
                $link = mysqli_connect('localhost', 'root', '', 'remonty');
                $zap4 = "SELECT k.imie, z.cena FROM klienci k, zlecenia z WHERE z.id_klienta = k.id_klienta and k.miasto='$miasto' and z.rodzaj='$usluga';";
                $wynik4 = mysqli_query($link, $zap4);
                echo "<ul>";
                while ($wiersz = mysqli_fetch_array($wynik4)) {
                echo "<li>$wiersz[0] - $wiersz[1]</li>";
                }
                echo "</ul>";
            }
            ?>
        </section>
    </main>
    <footer>
        <p><strong>Stronę wykonał: 000000000000</strong></p>
    </footer>
</body>
</html>