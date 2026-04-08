<?php
    $conn = mysqli_connect("localhost","root","","egzamin6");

    // pobieranie danych z formularza
    if(isset($_POST["wydarzenie"])) {
        $wydarzenie = $_POST["wydarzenie"];

        $sql = "UPDATE zadania SET wpis='$wydarzenie' WHERE dataZadania = '2020-08-27';";
        $result = mysqli_query($conn, $sql);
    }
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Organizer</title>
        <link rel="stylesheet" href="styl6.css">
    </head>
    <body>
        <div id="baner1">
            <h2>MÓJ ORGANIZER</h2>
        </div>

        <div id="baner2">
            <form action="organizer.php" method="post">
                <label for="wydarzenie">Wpis wydarzenia:</label> <input type="text" name="wydarzenie" id="wydarzenie"> <button type="submit">ZAPISZ</button>
            </form>
        </div>

        <div id="baner3">
            <img src="logo2.png" alt="Mój organizer">
        </div>

        <main>
            <?php
                // Skrypt #1
                $sql = "SELECT dataZadania, miesiac, wpis FROM zadania WHERE miesiac = 'sierpien';";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<div class='dzien'>";
                        echo "<h6>".$row["dataZadania"].", ".$row["miesiac"]."</h6>";
                        echo "<p>".$row["wpis"]."</p>";
                    echo "</div>";
                }
            ?>
        </main>

        <footer>
            <?php
                // Skrypt #2
                $sql = "SELECT miesiac, rok FROM zadania WHERE dataZadania = '2020-08-01';";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<h1>miesiąc: ".$row["miesiac"].", rok: ".$row["rok"]."</h1>";
                }
            ?>
            <p>Stronę wykonał: 00000000000000000</p>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>