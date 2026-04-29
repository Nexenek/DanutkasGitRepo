<?php
    $conn = mysqli_connect("localhost", "root", "", "kino");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Informacje o aktorze | KinoTEKA</title>
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
            <div id="aktorzy">
                <?php
                    // Skrypt #2
                    if (isset($_GET['id'])) {
                        $id = $_GET['id'];
                        $query = "SELECT imie, nazwisko, plik_awatara FROM aktorzy WHERE id_aktora = $id;";
                        $result = mysqli_query($conn, $query);
                        $row = mysqli_fetch_array($result);
                        $imie = $row['imie'];
                        $nazwisko = $row['nazwisko'];
                        echo "<div>";
                            echo "<img src='".$row['plik_awatara']."' alt='".$row['imie']." ".$row['nazwisko']."' title='".$row['imie']." ".$row['nazwisko']."'>";
                            echo "<h1>".$row['imie']." ".$row['nazwisko']."</h1>";
                        echo "</div>";
                    }
                ?>
            </div>
            <?php
                // Skrypt #3
                if (isset($_GET['id'])) {
                    $id = $_GET['id'];
                    $query = "SELECT f.id_filmu, f.tytul, f.rok_produkcji FROM filmy f JOIN filmy_aktorzy fa ON f.id_filmu = fa.id_filmu WHERE fa.id_aktora = $id;";
                    $result = $conn->query($query);
                    if ($result->num_rows > 0) {
                        echo $imie . " znajduje się na listach obsady " . $result->num_rows . " znanych nam produkcji.";
                    }
                    else {
                        echo "<p>$imie nie znajduje się na listach obsady znanych nam produkcji.</p>";
                    }
                }
            ?>
        </main>

        <footer>
            <p>Autor: 0000000000000</p>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>