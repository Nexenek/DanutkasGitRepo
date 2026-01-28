<?php
    $conn = mysqli_connect("localhost","root","","dane3");

    // Skrypt #3
    if(!empty($_POST["film"])) {
        $film = $_POST["film"];
        $sql = "DELETE FROM produkty WHERE id = $film;";
        $result = mysqli_query($conn, $sql);
    }
    
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Video On Demand</title>
        <link rel="stylesheet" href="styl3.css">
    </head>
    <body>
        <div id="baner1">
            <h1>Internetowa wypożyczalnia filmów</h1>
        </div>

        <div id="baner2">
            <table>
                <tr>
                    <td>Kryminał</td>
                    <td>Horror</td>
                    <td>Przygodowy</td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>30</td>
                    <td>20</td>
                </tr>
            </table>
        </div>

        <div id="polecamy">
            <h3>Polecamy</h3>
            <?php
                // Skrypt #1
                $sql = "SELECT id, nazwa, opis, zdjecie FROM produkty WHERE id IN (18, 22, 23, 25);";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<div class='film'>";
                        echo "<h4>$row[0]. $row[1]</h4>";
                        echo "<img src='$row[3]' alt='film'>";
                        echo "<p>$row[2]</p>";
                    echo "</div>";
                }
                
            ?>
        </div>

        <div id="filmy">
            <h3>Filmy fantastyczne</h3>
            <?php
                // Skrypt #2
                $sql = "SELECT id, nazwa, opis, zdjecie FROM produkty WHERE Rodzaje_id = 12;";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<div class='film'>";
                        echo "<h4>$row[0]. $row[1]</h4>";
                        echo "<img src='$row[3]' alt='film'>";
                        echo "<p>$row[2]</p>";
                    echo "</div>";
                }
            ?>
        </div>

        <footer>
            <form action="video.php" method="post">
                <label for="film">Usuń film nr.:</label> <input type="number" name="film" id="film"> <button type="submit">Usuń film</button>
            </form>
            Stronę wykonał: <a href="mailto:@ja@poczta.com">0000000000000000</a>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>