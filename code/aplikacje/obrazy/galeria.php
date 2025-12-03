<?php
    $conn = mysqli_connect("localhost", "root", "", "galeriaa");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>galeriaa</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Zdjęcia</h1>
        </header>

        <div id="lewy">
            <h2>Tematy zdjęć</h2>
            <ol>
                <li>Zwierzęta</li>
                <li>Krajobrazy</li>
                <li>Miasta</li>
                <li>Przyroda</li>
                <li>Samochody</li>
            </ol>
        </div>
        
        <main>
            <?php
                // Skrypt #1
                $sql = "SELECT plik, tytul, polubienia, imie, nazwisko FROM zdjecia JOIN autorzy ON autorzy_id = autorzy.id ORDER BY nazwisko;";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    echo "<div>";
                        echo "<img src='$row[0]' alt='zdjęcie'>";
                        echo "<h3>$row[1]</h3>";

                        if($row[2] > 40) {
                            echo "<p>Autor: $row[3] $row[4].<br>Wiele osób polubiło ten obraz</p>";
                        }
                        else {
                            echo "<p>Autor: $row[3] $row[4].</p>";
                        }

                        echo "<a href='$row[0]' download='$row[0]'>Pobierz</a>";

                    echo "</div>";
                }
            ?>
        </main>

        <div id="prawy">
            <h2>Najbardziej lubiane</h2>
            <?php
                // Skrypt #2
                $sql = "SELECT tytul, plik FROM zdjecia WHERE polubienia >= 100;";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    echo "<img src='$row[1]' alt='$row[0]'>";
                }
            ?>
            <strong>Zobacz wszystkie nasze zdjęcia</strong>
        </div>

        <footer>
            <h5>Stronę wykonał: 34678326784236784236784</h5>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>