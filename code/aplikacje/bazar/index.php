<?php
    $conn = mysqli_connect("localhost", "root", "", "bazar");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Zdrowy bazarek</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Zdrowy bazarek</h1>
        </header>

        <nav>
            <?php
                // Skrypt #1
                $query = "SELECT nazwa, plik FROM towar LIMIT 10;";
                $result = mysqli_query($conn, $query);
                while($row = mysqli_fetch_array($result)) {
                    echo "<img src='" . $row['plik'] . "' alt='" . $row['nazwa'] . "' height='150px'>";
                }
            ?>
        </nav>

        <main>
            <section id="boczny">
                <img src="market.png" alt="bazarek">
            </section>

            <section id="sekcji">
                <p>Wybierz owoc lub warzywo i podaj jego wagę:</p>
                <form action="index.php" method="post">
                    <select name="id" id="id" required>
                        <?php
                            // Skrypt #2
                            $query = "SELECT id, nazwa FROM towar;";
                            $result = mysqli_query($conn, $query);
                            while($row = mysqli_fetch_array($result)) {
                                echo "<option value='" . $row['id'] . "'>" . $row['nazwa'] . "</option>";
                            }
                        ?>
                    </select>
                    <input type="number" step="1" min="1" name="waga" id="waga">
                    <button type="submit">Zamów</button>
                </form>

                <?php
                    // Skrypt #3
                    if (isset($_POST['waga'], $_POST['id'])) {
                        $id = (int)$_POST['id'];
                        $waga = (int)$_POST['waga'];

                        if ($id > 0 && $waga > 0) {
                            $query = "SELECT nazwa, rodzaj, cena FROM towar WHERE id=$id;";
                            $result = mysqli_query($conn, $query);
                            $row = mysqli_fetch_array($result);

                            if ($row) {
                                $nazwa = $row['nazwa'];
                                $rodzaj = $row['rodzaj'];
                                $cena = $row['cena'] * $waga;
                                echo "<p>" . $rodzaj . " " . $nazwa . " " . $cena . " zł</p>";

                                $query = "INSERT INTO zamowienie VALUES (NULL, $id, 2, $waga);";
                                mysqli_query($conn, $query);
                            }
                        }
                    }
                ?>
            </section>
        </main>

        <footer>
            <p>Stronę opracował: 00000000000000</p>
        </footer>
    </body>
</html>

<?php
    $conn->close();
?>