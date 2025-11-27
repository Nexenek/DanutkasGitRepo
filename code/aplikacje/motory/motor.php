<?php
    $conn = mysqli_connect("localhost","root","","motory");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Motocykle</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <img src="motor.png" alt="motocykl">
        
        <header>
            <h1>Motocykle - moja pasja</h1>
        </header>

        <main>
            <h2>Gdzie pojechać?</h2>
            <?php
                // Skrypt #1
                $sql = "SELECT nazwa, opis, poczatek, zrodlo FROM wycieczki JOIN zdjecia ON zdjecia_id = zdjecia.id;";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    echo "<div class='terminy'>";
                        echo "$row[0], rozpoczyna się w $row[2], <a href='$row[3].jpg'>zobacz zdjęcie</a>";
                    echo "</div>";
                    echo "<div class='opis'>";
                        echo $row[1];
                    echo "</div>";
                }
            ?>
        </main>

        <div id="prawy1">
            <h2>Co kupić?</h2>
            <ol>
                <li>Honda CBR125R</li>
                <li>Yamaha YBR125</li>
                <li>Honda VFR800i</li>
                <li>Honda CBR1100XX</li>
                <li>BMW R1200GS LC</li>
            </ol>
        </div>

        <div id="prawy2">
            <h2>Statystyki</h2>
            <?php
                // Skrypt #2
                $sql = "SELECT COUNT(*) FROM wycieczki;";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    $liczba = $row[0];
                }
                echo "<p>Wpisanych wycieczek: $liczba</p>";
            ?>
            <p>Użytkowników forum: 200</p>
            <p>Przesłanych zdjęć: 1300</p>
        </div>

        <footer>
            <p>Stronę wykonał: 2389216732136217321</p>
        </footer>

    </body>
</html>

<?php
    mysqli_close($conn);
?>