<?php
    $conn = mysqli_connect("localhost","root","","egzamin");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Rozgrywki futbolowe</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h2>Światowe rozgrywki piłkarskie</h2>
            <img src="obraz1.jpg" alt="boisko">
        </header>

        <div id="mecze">
            <?php
                // Skrypt #1
                $sql = "SELECT zespol1, zespol2, wynik, data_rozgrywki FROM rozgrywka WHERE zespol1 = 'EVG';";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<div class='mecz'>";
                        echo "<h3>$row[0] - $row[1]</h3>";
                        echo "<h4>$row[2]</h4>";
                        echo "<p>w dniu: $row[3]</p>";
                    echo "</div>";
                }
            ?>
        </div>

        <main>
            <h2>Reprezentacja Polski</h2>
        </main>

        <div id="lewy">
            <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-napastinicy):</p>
            <form action="futbol.php" method="post">
                <input type="number" name="zawodnik" id="zawodnik">
                <button type="submit">Sprawdź</button>
            </form>
            <?php
                // Skrypt #2

                if (!empty($_POST["zawodnik"])) {
                    $zawodnik = $_POST["zawodnik"];

                    $sql = "SELECT imie, nazwisko FROM zawodnik WHERE pozycja_id = $zawodnik;";
                    $result = mysqli_query($conn, $sql);

                    echo "<ul>";
                    while($row = mysqli_fetch_array($result)) {
                        echo "<li><p>$row[0] $row[1]</p></li>";
                    }
                    echo "</ul>";
                }
            ?>
        </div>

        <div id="prawy">
            <img src="zad1.png" alt="piłkarz">
            <p>Autor: 0000000000000000000</p>
        </div>
    </body>
</html>

<?php
    mysqli_close($conn);
?>