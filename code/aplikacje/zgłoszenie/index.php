<?php
    $conn = mysqli_connect('localhost', 'root', '', 'zgloszenia');

    // Skrypt #3
    if (isset($_POST['dodaj_zgloszenie']) && isset($_POST['osoba_id'])) {
        $idPersonelu = $_POST['osoba_id'];
        $zapytanieDodaj = "INSERT INTO rejestr VALUES (NULL, CURDATE(), $idPersonelu, 14)";
        mysqli_query($conn, $zapytanieDodaj);
    }
?>
<!DOCTYPE html>
<html lang="PL-pl">
    <head>
        <meta charset="UTF-8">
        <title>ZGŁOSZENIA</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Zgłoszenia wydarzeń</h1>
        </header>

        <main>
            <div id="lewy">
                <h2>Personel</h2>
                <form action="index.php" method="post">
                    <label>
                        <input type="radio" name="personel" value="Policjant" checked>
                        Policjant
                    </label>
                    <label>
                        <input type="radio" name="personel" value="Ratownik">
                        Ratownik
                    </label>
                    <button type="submit" name="pokaz">Pokaż</button>
                </form>
                <?php
                    $wybranaOpcja = 'Policjant';
                    if (isset($_POST['personel'])) {
                        $wybranaOpcja = $_POST['personel'];
                    }

                    $statusPersonelu = strtolower($wybranaOpcja);
                    echo '<h3>Wybrano opcję: ' . $wybranaOpcja . '</h3>';

                    $zapytaniePersonel = "SELECT id, imie, nazwisko FROM personel WHERE status = '$statusPersonelu'";
                    $wynikPersonel = mysqli_query($conn, $zapytaniePersonel);
                ?>
                <table>
                    <tr>
                        <th>Id</th>
                        <th>Imię</th>
                        <th>Nazwisko</th>
                    </tr>
                    <?php
                        // Skrypt #1
                        while ($wiersz = mysqli_fetch_array($wynikPersonel)) {
                            echo '<tr>';
                            echo '<td>' . $wiersz[0] . '</td>';
                            echo '<td>' . $wiersz[1] . '</td>';
                            echo '<td>' . $wiersz[2] . '</td>';
                            echo '</tr>';
                        }
                    ?>
                </table>
            </div>

            <div id="prawy">
                <h2>Nowe zgłoszenie</h2>
                <?php
                    // Skrypt #2
                    $zapytanieBrakZgloszenia = "SELECT personel.id, personel.nazwisko FROM personel LEFT JOIN rejestr ON personel.id = rejestr.id_personel WHERE id_personel IS NULL";
                    $wynikBrakZgloszenia = mysqli_query($conn, $zapytanieBrakZgloszenia);

                    echo '<ol>';
                    while ($wiersz = mysqli_fetch_array($wynikBrakZgloszenia)) {
                        echo '<li>' . $wiersz[0] . ' ' . $wiersz[1] . '</li>';
                    }
                    echo '</ol>';
                ?>
                <form action="index.php" method="post">
                    <label for="osoba_id">Wybierz id osoby z listy: </label>
                    <input type="number" id="osoba_id" name="osoba_id" min="1" required>
                    <button type="submit" name="dodaj_zgloszenie">Dodaj zgłoszenie</button>
                </form>
            </div>
        </main>

        <footer>
            <p>Stronę wykonał: 0000000000000000</p>
        </footer>
        <?php
            mysqli_close($conn);
        ?>
    </body>
</html>