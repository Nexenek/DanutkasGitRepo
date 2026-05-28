<!DOCTYPE html>
<html lang="pl-PL">
    <head>
        <meta charset="UTF-8">
        <title>Hurtownia</title>
        <link rel="stylesheet" type="text/css" href="styl1.css">
    </head>
    <body>
        <div id="logo">
            <img src="komputer.png" alt="hurtownia komputerowa">
        </div>

        <div id="lista">
            <ul>
                <li>Sprzęt</li>
                <ol>
                    <li>Procesory</li>
                    <li>Pamięci RAM</li>
                    <li>Monitory</li>
                    <li>Obudowy</li>
                    <li>Karty graficzne</li>
                    <li>Dyski twarde</li>
                </ol>
                <li>Oprogramowanie</li>
            </ul>
        </div>

        <div id="formularz">
            <h2>Hurtownia komputerowa</h2>
            <form action="sklep.php" method="post">
                Wybierz kategorię sprzętu<br>
                <input type="number" name="kategoria" id="kategoria"> <button type="submit">SPRAWDŹ</button>
            </form>
        </div>

        <div id="glowny">
            <h1>Podzespoły we wskazanej kategorii</h1>
            <?php
                // Skrypt #1
                if(isset($_POST["kategoria"])) {
                    $id = $_POST["kategoria"];
                    $conn = mysqli_connect("localhost","root","","podzesklep");

                    $sql = "SELECT podzespoly.nazwa, podzespoly.opis, podzespoly.cena FROM podzespoly, typy WHERE podzespoly.typy_id = typy.id AND typy.id = '$id';";
                    $result = mysqli_query($conn, $sql);

                    while($row = mysqli_fetch_array($result)) {
                        echo "<p>".$row[0]." ".$row[1]." Cena: ".$row[2]."</p>";
                    }

                    mysqli_close($conn);
                }
                else {
                    echo "Wybierz poprawną kategorię sprzętu";
                }
            ?>
        </div>

        <footer>
            <h3>Hurtownia działa od poniedziałku do soboty w godzinach 7<sup>00</sup>-16<sup>00</sup></h3>
            <a href="mailto:bok@hurtownia.pl">Napisz do nas</a> Partnerzy: <a href="http://intel.pl" target="_blank">Intel</a> <a href="http://amd.pl" target="_blank">AMD</a>
            <p>Stronę wykonał: 000000000000</p>
        </footer>
    </body>
</html>