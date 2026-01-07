<?php
    $conn = mysqli_connect("localhost", "root", "", "firma");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Sekretariat</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <div class="lewy">
            <h1>Akta Pracownicze</h1>
            <?php
                // Skrypt #1
                $query1 = "SELECT id, imie, nazwisko, adres, miasto, czyRODO, czyBadania FROM pracownicy WHERE id=2";
                $result1 = mysqli_query($conn, $query1);

                if (mysqli_num_rows($result1) > 0) {
                    while ($row = mysqli_fetch_array($result1)) {
                        echo "<h3>dane</h3>";
                        echo "<p>{$row['imie']} {$row['nazwisko']}</p>";
                        echo "<hr>";
                        echo "<h3>adres</h3>";
                        echo "<p>{$row['adres']}</p>";
                        echo "<p>{$row['miasto']}</p>";
                        echo "<hr>";
                        echo "<p>RODO: " . ($row['czyRODO'] ? 'podpisano' : 'niepodpisano') . "</p>";
                        echo "<p>Badania: " . ($row['czyBadania'] ? 'aktualne' : 'nieaktualne') . "</p>";
                    }
                }
            ?>
            <hr>
            <h3>Dokumenty pracownika</h3>
            <a href="cv.txt">Pobierz</a>
            <h1>Liczba zatrudnionych pracowników</h1>
            <?php
                // Skrypt #2
                $query2 = "SELECT COUNT(*) FROM pracownicy";
                $result2 = $conn->query($query2);

                if ($result2->num_rows > 0) {
                    $row = mysqli_fetch_array($result2);
                    echo "Liczba pracowników: " . $row['COUNT(*)'];
                }
            ?>
        </div>

        <div class="prawy">
            <?php
                // Skrypt #3
                $query3 = "SELECT id, imie, nazwisko FROM pracownicy WHERE id=2";
                $result3 = mysqli_query($conn, $query3);

                if (mysqli_num_rows($result3) > 0) {
                    $row = mysqli_fetch_array($result3);
                    $imageName = "{$row['id']}.jpg";
                    
                    echo "<img src='$imageName' alt='pracownik'>";
                    echo "<h2>{$row['imie']} {$row['nazwisko']}</h2>";

                    $query4 = "SELECT pracownicy.id, stanowiska.nazwa, stanowiska.opis FROM pracownicy, stanowiska WHERE pracownicy.stanowiska_id = stanowiska.id AND pracownicy.id = 2";
                    $result4 = mysqli_query($conn, $query4);

                    if (mysqli_num_rows($result4) > 0) {
                        $row4 = mysqli_fetch_array($result4);
                        echo "<h4>{$row4['nazwa']}</h4>";
                        echo "<h5>{$row4['opis']}</h5>";
                    }
                }
            ?>
        </div>

        <footer>
            Autorem aplikacji jest: 34436742323
            <ul>
                <li>skontaktuj się</li>
                <li>poznaj naszą firmę</li>
            </ul>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>