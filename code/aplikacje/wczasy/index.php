<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Biuro turystyczne</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="wczasy.html">Wczasy</a>
            <li><a href="wycieczki.html">Wycieczki</a>
            <li><a href="allinclusive.html">All inclusive</a>
    </nav>
    <main>
        <aside>
            <h3>Twój cel wyprawy</h3>
            <form action="index.php" method="post">
                <label for="miejsce">Miejsce wycieczki</label>
                <select name="miejsce" id="miejsce">
                    <?php
                    $link = mysqli_connect('localhost', 'root', '', 'wyprawygr1');
                    $zap1 = "SELECT nazwa FROM miejsca ORDER BY nazwa ASC";
                    $odp1 = mysqli_query($link, $zap1);
                    while ($row = mysqli_fetch_array($odp1)) {
                        echo '<option value="' . $row['nazwa'] . '">' . $row['nazwa'] . '</option>';
                    }
                    mysqli_close($link);
                    ?>
                </select>
                <br>
                <label for="dorosli">Ile dorosłych?</label>
                <input type="number" name="dorosli" id="dorosli" min="1" required>
                <br>
                <label for="dzieci">Ile dzieci?</label>
                <input type="number" name="dzieci" id="dzieci" min="0" required>
                <br>
                <label for="termin">Termin</label>
                <input type="date" name="termin" id="termin" required>
                <br>
                <button type="submit" name="submit" formaction="index.php">Symulacja ceny</button>
            </form>
            <h4>Koszt wycieczki</h4>
            <?php
            if (isset($_POST["submit"])) {
                $miejsce = $_POST['miejsce']??NULL;
                $dorosli = $_POST['dorosli']??NULL;
                $dzieci = $_POST['dzieci']??NULL;
                $termin = $_POST['termin']??NULL;
                if (isset($miejsce)) {
                    $link = mysqli_connect('localhost', 'root', '', 'wyprawygr1');
                    $zap2 = "SELECT cena FROM miejsca WHERE nazwa = '$miejsce'";
                    $odp2 = mysqli_query($link, $zap2);

                    $row = mysqli_fetch_array($odp2);
                    $cena = $row['cena'] * ($dorosli + ($dzieci / 2));
                    echo "<p>W dniu: $termin</p>";
                    echo "<p>$cena złotych</p>";

                    mysqli_close($link);
                }
            }
            ?>
        </aside>
        <section>
            <h3>Wycieczki</h3>
            <?php
            $link = mysqli_connect('localhost', 'root', '', 'wyprawygr1');
            $zap3 = "SELECT nazwa, cena, link_obraz FROM miejsca WHERE link_obraz LIKE '0%'";
            $odp3 = mysqli_query($link, $zap3);

            while ($row = mysqli_fetch_array($odp3)) {
                echo '<div class="wycieczka">';
                echo '<img src="' . htmlspecialchars($row['link_obraz']) . '" alt="zdjęcie z wycieczki">';
                echo '<h2>' . htmlspecialchars($row['nazwa']) . '</h2>';
                echo '<p>' . htmlspecialchars($row['cena']) . ' zł</p>';
                echo '</div>';
            }

            mysqli_close($link);
            ?>
        </section>
    </main>
    <footer>
        <p>Autor: Twoja Matka</p>
    </footer>
</body>
</html>