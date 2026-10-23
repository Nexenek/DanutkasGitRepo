<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <title>Sprzedaż antyków</title>
    <link rel="stylesheet" href="styl.css">
</head>

<body>
    <header>
        <h1>Najlepsze antyki w mieście</h1>
    </header>
    <main>
        <section>
            <h2>- Sofy -</h2>
            <?php
                $link = mysqli_connect("localhost", "root", "", "antyki");
                $query = "SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria = 1";
                $result = mysqli_query($link, $query);
                while ($row = mysqli_fetch_array($result)) {
                    echo "<div class='mebel'>";
                    echo "<div class='obraz'><img src='./sofy/" . $row['plik'] . "' alt='mebel'></div>";
                    echo "<div class='informacje'><h3>" . $row['nazwa'] . "</h3><br><h4>styl " . $row['styl'] . "</h4><br><h3>cena: " . $row['cena'] . " zł</h3></div>";
                    echo "<form method='post'><button type='submit' name='submit' value='" . $row['idMeble'] . "'>KUP</button></form>";
                    echo "<div class='opis'>" . $row['opis'] . "</div>";
                    echo "</div>";
                }
            ?>
            <h2>- Fotele -</h2>
            <?php
                $query = "SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria = 2";
                $result = mysqli_query($link, $query);
                while ($row = mysqli_fetch_array($result)) {
                    echo "<div class='mebel'>";
                    echo "<div class='obraz'><img src='./fotele/" . $row['plik'] . "' alt='mebel'></div>";
                    echo "<div class='informacje'><h3>" . $row['nazwa'] . "</h3><br><h4>styl " . $row['styl'] . "</h4><br><h3>cena: " . $row['cena'] . " zł</h3></div>";
                    echo "<form method='post'><button type='submit' name='submit' value='" . $row['idMeble'] . "'>KUP</button></form>";
                    echo "<div class='opis'>" . $row['opis'] . "</div>";
                    echo "</div>";
                }
            ?>
            <h2>- Komody -</h2>
            <?php
                $query = "SELECT idMeble, nazwa, plik, styl, cena, opis FROM meble WHERE kategoria = 3";
                $result = mysqli_query($link, $query);
                while ($row = mysqli_fetch_array($result)) {
                    echo "<div class='mebel'>";
                    echo "<div class='obraz'><img src='./komody/" . $row['plik'] . "' alt='mebel'></div>";
                    echo "<div class='informacje'><h3>" . $row['nazwa'] . "</h3><br><h4>styl " . $row['styl'] . "</h4><br><h3>cena: " . $row['cena'] . " zł</h3></div>";
                    echo "<form method='post'><button type='submit' name='submit' value='" . $row['idMeble'] . "'>KUP</button></form>";
                    echo "<div class='opis'>" . $row['opis'] . "</div>";
                    echo "</div>";
                }
            ?>
            <?php
                if (isset($_POST['submit'])) {
                $mebel = $_POST['submit'];
                $query2modified = "INSERT INTO zakupy VALUES (NULL, 1, $mebel, 1);";
                mysqli_query($link, $query2modified);
                header('location: index.php');
            }
            ?>
        </section>
        <aside>
            <h2>Koszyk</h2>
            <p>Zalogowano: Anna Kowalska</p>
            <?php
            $query3 = "SELECT nazwa, cena FROM meble JOIN zakupy USING (idMeble) WHERE idKlienci = 1;";
            $result = mysqli_query($link, $query3);
            $kosztKoszyka = 0;
            echo "<ol>";
            while ($row = mysqli_fetch_array($result)) {
                $kosztKoszyka += $row['cena'];
                echo "<li>{$row['nazwa']}, cena: {$row['cena']}</li>";
            }
            echo "</ol>";
            echo "Koszt całkowity: $kosztKoszyka";
            ?>
        </aside>
    </main>
    <footer>
        <p>Stronę wykonał: 0000000000</p>
    </footer>
    <?php // skrypt 6 ?>
</body>

</html>
