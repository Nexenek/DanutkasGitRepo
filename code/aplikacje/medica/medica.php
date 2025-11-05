<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Przychodnia Medica</title>
    <link rel="icon" type="image/png" href="obraz2.png">
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Abonamenty w przychodni Medica</h1>
    </header>
    <article>
        <?php
        $link = mysqli_connect("localhost", "root", "", "medica");
        $zapytanie = "SELECT `nazwa`, `cena`, `opis` FROM `abonamenty`";
        $wynik = mysqli_query($link, $zapytanie);
        while ($abonament = mysqli_fetch_array($wynik)) {
            echo "<h3>$abonament[0] - cena: $abonament[1] zł</h3>";
            echo "<p>" . $abonament[2] . "</p>";
        }
        ?>
        <a href="opis.html">Dowiedz się więcej</a>
    </article>
    <main>
        <section>
            <h2>Standardowy</h2>
            <ul>
                <?php
                $zap3 = "SELECT a.nazwa, c.cecha FROM abonamenty a JOIN szczegolyabonamentu sa ON a.id = sa.Abonamenty_id JOIN cechy c ON sa.Cechy_id = c.id WHERE a.id = 1;";
                $wynik3 = mysqli_query($link, $zap3);
                while ($usluga = mysqli_fetch_array($wynik3)) {
                    echo "<li>$usluga[1]</li>";
                }
                ?>
            </ul>
        </section>
        <section>
            <h2>Premium</h2>
            <ul>
                <?php
                $zap3 = "SELECT a.nazwa, c.cecha FROM abonamenty a JOIN szczegolyabonamentu sa ON a.id = sa.Abonamenty_id JOIN cechy c ON sa.Cechy_id = c.id WHERE a.id = 2;";
                $wynik3 = mysqli_query($link, $zap3);
                while ($usluga = mysqli_fetch_array($wynik3)) {
                    echo "<li>$usluga[1]</li>";
                }
                ?>
            </ul>
        </section>
        <section>
            <h2>Dziecko</h2>
            <ul>
                <?php
                $zap3 = "SELECT a.nazwa, c.cecha FROM abonamenty a JOIN szczegolyabonamentu sa ON a.id = sa.Abonamenty_id JOIN cechy c ON sa.Cechy_id = c.id WHERE a.id = 3;";
                $wynik3 = mysqli_query($link, $zap3);
                while ($usluga = mysqli_fetch_array($wynik3)) {
                    echo "<li>$usluga[1]</li>";
                }
                ?>
            </ul>
        </section>
    </main>
    <footer>
        <p>
            <img src="obraz2.png" alt="przychodnia" style="vertical-align:middle;">
            Stronę przygotował: 00000000000
        </p>
    </footer>
</body>
</html>