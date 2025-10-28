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
                            echo"<p>$wiersz[0], $wiersz[1]</p>";
                        }
                    }
                ?>
            </form>
        </section>
        <section id="srodek">
            <h2>Dla wykonawców</h2>
            <form action="zlecenia.php" name="wykonawcy" method="post">
                <select>
                    <?php
                        //skrypt 2
                    ?>
                </select>
            </form>
        </section>
    </main>
    <footer>
        <p><strong>Stronę wykonał: 000000000000</strong></p>
    </footer>
</body>
</html>