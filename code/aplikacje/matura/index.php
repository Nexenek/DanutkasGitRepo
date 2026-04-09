<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <title>Matura</title>
    <link rel="stylesheet" href="styl.css">
</head>

<body>
    <header>
        <h1>System informacji dla maturzystów</h1>
    </header>
    <div id="container-row">
        <aside>
            <img src="ma.jpg" alt="Matura">
            <img src="tu.jpg" alt="Matura">
            <img src="ra.jpg" alt="Matura">
        </aside>
        <div id="container-column">
            <section>
                <h3>Wybierz ucznia z listy</h3>
                <?php
                $link = mysqli_connect('localhost', 'root', '', 'matura');
                $zap1 = "SELECT id, imie, nazwisko FROM maturzysta WHERE szkola = 'T3' ORDER BY nazwisko ASC;";
                $odp = mysqli_query($link, $zap1);
                while ($row = mysqli_fetch_array($odp)) {
                    echo "<a href='wynik.php?id={$row["id"]}&imie={$row["imie"]}&nazwisko={$row["nazwisko"]}'>{$row['id']}. {$row['imie']} {$row['nazwisko']}</a><br>";
                }
                ?>
            </section>
            <section>
                <div class='block'>
                    <h4>Przedmioty</h4>
                    <?php
                    $zap2 = "SELECT DISTINCT przedmiot FROM arkusz;";
                    $odp = mysqli_query($link, $zap2);
                    while ($row = mysqli_fetch_array($odp)) {
                        echo "{$row['przedmiot']}<br>";
                    }
                    ?>
                </div>
                <div class='block'>
                    <h4>Lata</h4>
                    <?php
                    $zap3 = "SELECT MIN(rok), MAX(rok) FROM arkusz;";
                    $odp = mysqli_query($link, $zap3);
                    while ($row = mysqli_fetch_array($odp)) {
                        echo "{$row['MIN(rok)']} - {$row['MAX(rok)']}";
                    }
                    ?>
                </div>
                <div class='block'>
                    <h4>Najlepszy wynik</h4>
                    <?php
                    $zap4 = "SELECT maturzysta_id, AVG(punkty) AS 'Wynik' FROM wynik GROUP BY maturzysta_id ORDER BY Wynik DESC LIMIT 1;";
                    $odp = mysqli_query($link, $zap4);
                    $row = mysqli_fetch_array($odp);
                    echo "{$row['Wynik']}%";
                    ?>
                </div>
                <div class='block'>
                    <h4>Najgorszy wynik</h4>
                    <?php
                    $zap4 = "SELECT maturzysta_id, AVG(punkty) AS 'Wynik' FROM wynik GROUP BY maturzysta_id ORDER BY Wynik ASC LIMIT 1;";
                    $odp = mysqli_query($link, $zap4);
                    $row = mysqli_fetch_array($odp);
                    echo "{$row['Wynik']}%";
                    mysqli_close($link);
                    ?>
                </div>
            </section>
        </div>
    </div>
    <footer>
        <p>Stronę wykonał: 000000000000</p>
    </footer>
</body>

</html>