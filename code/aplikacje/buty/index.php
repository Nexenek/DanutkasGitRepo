<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Obuwie</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <h1>Obuwie męskie</h1>
    </header>
    <main>
        <form action="zamow.php" method="post">
            <label for="model">Model: </label>
            <select name="model" id="model">
                <?php
                $conn = mysqli_connect('localhost', 'root', '', 'obuwie');
                $sql = "SELECT model FROM produkt";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_array($result)) {
                    echo '<option value="' . $row['model'] . '">' . $row['model'] . '</option>';
                }
                mysqli_close($conn);
                ?>
            </select>
            <label for="rozmiar">Rozmiar: </label>
            <select name="rozmiar" id="rozmiar">
                <?php
                for ($i = 40; $i <= 43; $i++) {
                    echo "<option value=\"$i\">$i</option>";
                }
                ?>
            </select>
            <label for="liczba_par">Liczba par: </label>
            <input type="number" name="liczba_par" id="liczba_par" min="1">
            <button type="submit">Zamów</button>
        </form>
        <?php
        $conn = mysqli_connect('localhost', 'root', '', 'obuwie');
        $sql = "SELECT buty.model, buty.nazwa, buty.cena, produkt.nazwa_pliku FROM buty JOIN produkt ON buty.model = produkt.model";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<div class="produkt">';
            echo '<img src="' . htmlspecialchars($row['nazwa_pliku']) . '" alt="but męski">';
            echo '<h2>' . htmlspecialchars($row['nazwa']) . '</h2>';
            echo '<h5>Model: ' . htmlspecialchars($row['model']) . '</h5>';
            echo '<h4>Cena: ' . htmlspecialchars($row['cena']) . '</h4>';
            echo '</div>';
        }
        mysqli_close($conn);
        ?>
    </main>
    <footer>
        <p>Autor strony: 67834678343467834678</p>
    </footer>
</body>
</html>