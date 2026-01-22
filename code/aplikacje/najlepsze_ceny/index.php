<?php
    $conn = mysqli_connect("localhost","root","","sklep");
?>

<!DOCTYPE html>
<html lang="PL-pl">
    <head>
        <meta charset="UTF-8">
        <title>Hurtownia szkolna</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Hurtownia z najlepszymi cenami</h1>
        </header>

        <div id="lewy">
            <h2>Nasze ceny</h2>
            <table>
                <?php
                    // Skrypt 1
                    $sql = "SELECT nazwa, cena FROM towary LIMIT 4;";
                    $result = mysqli_query($conn, $sql);

                    while($row = mysqli_fetch_array($result)) {
                        echo "<tr>";
                            echo "<td>$row[0]</td>";
                            echo "<td>$row[1]</td>";
                        echo "</tr>";
                    }
                ?>
            </table>
        </div>

        <div id="srodkowy">
            <h2>Koszt zakupów</h2>
            <form action="index.php" method="post">
                <label for="towar">wybierz atrykuł: </label>
                <select name="towar" id="towar">
                    <option value="Zeszyt 60 kartek">Zeszyt 60 kartek</option>
                    <option value="Zeszyt 32 kartki">Zeszyt 32 kartki</option>
                    <option value="Cyrkiel">Cyrkiel</option>
                    <option value="Linijka 30 cm">Linijka 30 cm</option>
                </select><br>

                <label for="liczba">liczba sztuk: </label>
                <input type="number" name="liczba" id="liczba"><br>

                <button type="submit" name="oblicz" id="oblicz">OBLICZ</button>
            </form>

            <?php
                // Skrypt 2
                if(isset($_POST["oblicz"])) {
                    $towar = $_POST["towar"];
                    $liczba = $_POST["liczba"];

                    $sql = "SELECT cena FROM towary WHERE nazwa = '$towar';";
                    $result = mysqli_query($conn, $sql);
                    while($row = mysqli_fetch_array($result)) {
                        $cena = $row[0] * $liczba;
                    }

                    echo "wartość zakupów: $cena";
                }
            ?>
        </div>

        <div id="prawy">
            <h2>Kontakt</h2>
            <img src="zakupy.png" alt="hurtownia">
            <p>e-mail: <a href="mailto:hurt@poczta2.pl">hurt@poczta2.pl</a></p>
        </div>

        <footer>
            <h4>Witrynę wykonał: 00000000000000000</h4>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>