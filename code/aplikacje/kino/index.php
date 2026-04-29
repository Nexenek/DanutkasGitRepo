<?php
    $conn = mysqli_connect("localhost", "root", "", "kino");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Lista aktorów | KinoTEKA</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <div id="header1">
            <h2><a href="index.php">KinoTEKA</a></h2>
        </div>

        <div id="header2">
            <p><em>W naszej bazie znajdują się najlepsi aktorzy</em></p>
        </div>

        <main>
            <h1>Najlepsi aktorzy tylko w naszym kinie</h1>
            <div id="wynik">
                <?php
                    // Skrypt #1
                    $query = "SELECT * FROM aktorzy ORDER BY nazwisko ASC, imie ASC;";
                    $result = mysqli_query($conn, $query);
                    while ($row = mysqli_fetch_array($result)) {
                        echo "<div>";
                            echo "<a href='aktor.php?id=".$row['id_aktora']."'>";
                                echo "<img src='".$row['plik_awatara']."' alt='".$row['imie']." ".$row['nazwisko']."' title='".$row['imie']." ".$row['nazwisko']."'>";
                                echo "<p>".$row['imie']." ".$row['nazwisko']."</p>";
                            echo "</a>";
                        echo "</div>";
                    }
                ?>
            </div>
        </main>

        <footer>
            <p>Autor: 00000000000000000</p>
        </footer>
    </body>
</html>

<?php
    $mysqli_close($conn);
?>