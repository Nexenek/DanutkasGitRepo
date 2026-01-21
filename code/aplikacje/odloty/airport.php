<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Odloty samolotów</title>
        <link rel="stylesheet" href="styl6.css">
    </head>
    <body>
        <div id="baner1">
            <h2>Odloty z lotniska</h2>
        </div>

        <div id="baner2">
            <img src="zad6.png" alt="logotyp">
        </div>

        <main>
            <h4>tabela odlotów</h4>
            <table>
                <tr>
                    <th>lp.</th>
                    <th>numer rejsu</th>
                    <th>czas</th>
                    <th>kierunek</th>
                    <th>status</th>
                </tr>
                <?php
                    // Skrypt #1
                    $conn = new mysqli("localhost","root","","egzamin");

                    $sql = "SELECT id, nr_rejsu, czas, kierunek, status_lotu FROM odloty ORDER BY czas DESC;";
                    $result = $conn->query($sql);

                    while($row = $result -> fetch_array()) {
                        echo "<tr>";
                            echo "<td>$row[0]</td>";
                            echo "<td>$row[1]</td>";
                            echo "<td>$row[2]</td>";
                            echo "<td>$row[3]</td>";
                            echo "<td>$row[4]</td>";
                        echo "</tr>";
                    }

                    $conn -> close();
                ?>
            </table>
        </main>

        <div id="stopka1">
            <a href="kw1.jpg">Pobierz obraz</a>
        </div>

        <div id="stopka2">
        <?php
            // Skrypt #2
            if(!isset($_COOKIE['visit'])){
                setcookie('visit', time(), time() + 3600);
                echo '<div id="stopka2"><p><em>Dzień dobry! Sprawdź regulamin naszej strony.</em></p></div>';
            }
            else {
                echo '<div id="stopka2"><p><strong>Miło nam, że nas znowu odwiedziłeś!</strong></p></div>';
            }
        ?>
        </div>

        <div id="stopka3">
            Autor: 00000000000000
        </div>
    </body>
</html>