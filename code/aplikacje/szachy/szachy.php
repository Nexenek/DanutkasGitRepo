<?php
    $link = mysqli_query(hostname: "localhost",username: "root",password: "",database: "szachy");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>KOŁO SZACHOWE</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <header>
            <h2>Koło szachowe <i>gambit</i> piona</h2>
        </header>

        <div id="lewy">
            <h4>Polecane linki</h4>
            <ul>
                <li><a href="kw1.png">kwerenda1</a></li>
                <li><a href="kw2.png">kwerenda2</a></li>
                <li><a href="kw3.png">kwerenda3</a></li>
                <li><a href="kw4.png">kwerenda4</a></li>
            </ul>
            <img src="logo.png" alt="Logo koła">
        </div>

        <div id="prawy">
            <h3>Najlepsi gracze naszego koła</h3>
            <table>
                <tr>
                    <th>Pozycja</th>
                    <th>Pseudonim</th>
                    <th>Tytuł</th>
                    <th>Ranking</th>
                    <th>Klasa</th>
                </tr>
                <?php
                    // Skrypt #1
                    $sql = "SELECT pseudonim, tytul, ranking, klasa FROM zawodnicy WHERE ranking > 2787 ORDER BY ranking DESC;";
                    $result = mysqli_query($link, $sql);
                    $i = 1;
                    while ($row = mysqli_fetch_array($result)) {
                        echo "<tr>";
                        echo "<td>" . $i . "</td>";
                        echo "<td>" . $row["pseudonim"] . "</td>";
                        echo "<td>" . $row["tytul"] . "</td>";
                        echo "<td>" . $row["ranking"] . "</td>";
                        echo "<td>" . $row["klasa"] . "</td>";
                        echo "</tr>";
                        $i++;
                    }
                    echo "<tr>";
                    echo "</tr>";
                ?>
            </table>
            <form action="szachy.php" method="post">
                <input type="submit" value="Losuj nową parę graczy" id="losuj" name="losuj">
            </form>
            <?php
                // Skrypt #2
                if (isset($_POST['losuj'])) {
                    $sql = "SELECT pseudonim, klasa FROM zawodnicy ORDER BY RAND() LIMIT 2;";
                    $result = mysqli_query($link, $sql);
                    echo "<h4>";
                    while ($row = mysqli_fetch_array($result)) {
                        echo $row["pseudonim"]." ".$row['klasa']." ";
                    }
                    echo "</h4>";
                }
            ?>
            <p>Legenda: AM - Absolutny Mistrz, SM - Szkolny Mistrz, PM - Mistrz Poziomu, KM - Mistrz Klasowy</p>
        </div>

        <footer>
            <p>Stronę wykonał: 000000000000000</p>
        </footer>
    </body>
</html>

<?php
    mysqli_close($link);
?>