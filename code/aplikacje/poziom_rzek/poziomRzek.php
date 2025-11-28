<?php
    $conn = mysqli_connect("localhost","root","","rzeki");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Poziomy rzek</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <div id="header1">
            <img src="obraz1.png" alt="Mapa Polski">
        </div>

        <div id="header2">
            <h1>Rzeki w województwie dolnośląskim</h1>
        </div>

        <nav>
            <form action="poziomRzek.php" method="post">
                <input type="radio" name="stan" id="wszystkie" value="wszystkie">
                <label for="wszystkie">Wszystkie</label>

                <input type="radio" name="stan" id="ostrzegawczy" value="ostrzegawczy">
                <label for="ostrzegawczy">Ponad stan ostrzegawczy</label>

                <input type="radio" name="stan" id="alarmowy" value="alarmowy">
                <label for="alarmowy">Ponad stan alarmowy</label>

                <button type="submit" name="pokaz">Pokaż</button>
            </form>
        </nav>

        <div id="lewy">
            <h3>Stany na dzień 2022-05-05</h3>
            <table>
                <tr>
                    <th>Wodomierz</th>
                    <th>Rzeka</th>
                    <th>ostrzegawczy</th>
                    <th>Alarmowy</th>
                    <th>Aktualny</th>
                </tr>

                <?php
                    // Skrypt #1

                    if(isset($_POST['stan'])) {
                        $stan = $_POST['stan'];
                        if($stan == 'wszystkie') {
                            $sql = "SELECT nazwa, rzeka, stanOstrzegawczy, stanAlarmowy, stanWody FROM wodowskazy JOIN pomiary ON wodowskazy.id = wodowskazy_id WHERE dataPomiaru='2022-05-05';";
                        }
                        else if($stan == 'ostrzegawczy') {
                            $sql = "SELECT nazwa, rzeka, stanOstrzegawczy, stanAlarmowy, stanWody FROM wodowskazy JOIN pomiary ON wodowskazy.id = wodowskazy_id WHERE dataPomiaru='2022-05-05' AND stanWody > stanOstrzegawczy;";
                        }
                        else if($stan == 'alarmowy') {
                            $sql = "SELECT nazwa, rzeka, stanOstrzegawczy, stanAlarmowy, stanWody FROM wodowskazy JOIN pomiary ON wodowskazy.id = wodowskazy_id WHERE dataPomiaru='2022-05-05' AND stanWody > stanAlarmowy;";
                        }
                        $result = mysqli_query($conn, $sql);
                        while($row = mysqli_fetch_array($result)) {
                            echo "<tr>";
                                echo "<td>$row[0]</td>";
                                echo "<td>$row[1]</td>";
                                echo "<td>$row[2]</td>";
                                echo "<td>$row[3]</td>";
                                echo "<td>$row[4]</td>";
                            echo "</tr>";
                        }
                    }
                ?>

            </table>
        </div>

        <div id="prawy">
            <h3>informacje</h3>
            <ul>
                <li>Brak ostrzeżeń o burzach z gradem</li>
                <li>Smog w mieście Wrocław</li>
                <li>Silny wiatr w Karkonoszach</li>
            </ul>
            <h3>Średnie stany wód</h3>
            
            <?php
                // Skrypt #2
                $sql = "SELECT dataPomiaru, AVG(stanWody) FROM pomiary GROUP BY dataPomiaru; ";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    echo "<p>$row[0]: $row[1]</p>";
                }
            ?>

            <a href="https://komunikaty.pl">Dowiedz się więcej</a>

            <img src="obraz2.jpg" alt="rzeka">
        </div>

        <footer>
            <p>Stronę wykonał: 29392163217321</p>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>