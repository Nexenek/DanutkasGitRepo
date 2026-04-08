<?php
    $link = mysqli_connect("localhost", "root", "", "samochod");
?>
<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Konfigurator samochodów</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <h1>Serwis konfiguracji samochodów</h1>
    </header>
    <nav>
        <h2>Samochody</h2>
        <h2>Konfigurator</h2>
        <h2>Kontakt</h2>
    </nav>
    <main>
        <section id="lewy">
            <table>
                <?php
                    $query = "SELECT marka, model, cena, nazwa, doplata FROM pojazdy INNER JOIN kolory ON kolor = kolory.id WHERE model = 'alfa';";
                    $result = mysqli_query($link, $query);

                        while ($row = mysqli_fetch_array($result)) {
                            $cena_calkowita = $row['cena'] + $row['doplata'];

                            echo "<tr>";
                                echo "<td>" . $row['marka'] . "</td>";
                                echo "<td>" . $row['model'] . "</td>";
                                echo "<td>" . $row['nazwa'] . "</td>";
                                echo "<td>" . $cena_calkowita . "</td>";
                            echo "</tr>";
                        }
                ?>
            </table>
        </section>
        <section id="srodek">
            <table>
                <tr>
                    <th>Konfiguracja</th>
                    <th colspan="2">Cena</th>
                </tr>
                <?php
                    $query = "SELECT marka, model, cena FROM pojazdy ORDER BY RAND() LIMIT 2;";
                    $result = mysqli_query($link, $query);
                    $rowNum = 1;
                    $images = ["a1.jpg", "a2.jpg"];

                    while ($row = mysqli_fetch_array($result)) {
                        echo "<tr>";
                            echo "<td colspan=\"3\"><img src=\"" . $images[$rowNum - 1] . "\" alt=\"Konfiguracja " . $rowNum . "\"></td>";
                        echo "</tr>";
                        echo "<tr>";
                            echo "<td>Marka</td><td>" . $row['marka'] . "</td><td rowspan=\"2\">" . $row['cena'] . " PLN</td>";
                        echo "</tr>";
                        echo "<tr>";
                            echo "<td>Model</td><td>" . $row['model'] . "</td>";
                        echo "</tr>";
                        $rowNum++;
                    }

                    mysqli_close($link);
                ?>
            </table>
        </section>
        <section id="prawy">
            <h3>111 222 444</h3>
            <img src="a3.png" alt="Samochód">
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>