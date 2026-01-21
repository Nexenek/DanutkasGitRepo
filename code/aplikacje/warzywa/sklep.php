<?php
    $conn = new mysqli("localhost","root","","dane2");
    
    if(!empty($_POST["nazwa"]) && !empty($_POST["cena"])) {
        $nazwa = $_POST["nazwa"];
        $cena = $_POST["cena"];

        $sql = "INSERT INTO produkty VALUES (NULL, 1, 4, '$nazwa', 10, '', $cena, 'owoce.jpg');";
        $result = $conn->query($sql);
    }
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Warzywniak</title>
        <link rel="stylesheet" href="styl2.css">
    </head>
    <body>
        <div id="baner1">
            <h1>Internetowy sklep z eko-warzywami</h1>
        </div>

        <div id="baner2">
            <ol>
                <li>warzywa</li>
                <li>owoce</li>
                <li><a href="https://terapiasokami.pl/" target="_blank">soki</a></li>
            </ol>
        </div>

        <main>
            <?php
                // Skrypt #1
                $sql = "SELECT nazwa, ilosc, opis, cena, zdjecie FROM produkty WHERE Rodzaje_id IN (1, 2);";
                $result = $conn->query($sql);
                    
                while($row = $result -> fetch_array()) {
                    echo "<div class='produkt'>";
                        echo "<img src='$row[4]' alt='warzywniak'>";
                        echo "<h5>$row[0]</h5>";
                        echo "<p>opis: $row[2]</p>";
                        echo "<p>na stanie: $row[1]</p>";
                        echo "<h2>$row[3] zł</h2>";
                    echo "</div>";
                }
            ?>
        </main>

        <footer>
            <form action="sklep.php" method="post">
                <label for="nazwa">Nazwa: </label> <input type="text" name="nazwa" id="nazwa"> <label for="cena">Cena:</label> <input type="text" name="cena" id="cena"> <button type="submit">Dodaj produkt</button>
            </form>
            Stronę wykonał: 000000000000000
        </footer>
    </body>
</html>

<?php
    $conn -> close();
?>