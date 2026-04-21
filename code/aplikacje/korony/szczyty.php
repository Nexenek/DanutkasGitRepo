<?php
    $conn = new mysqli("localhost", "root", "", "korona");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Korona gór polskich</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <div id="header1">
            <img src="logo.png" alt="Logo">
        </div>

        <div id="header2">
            <h1>Korona Gór Polskich</h1>
        </div>

        <main>
            <?php
                // Skrypt #3
                if(isset($_GET['id'])) {
                    $id = $_GET['id'];
                    $query = "SELECT szczyty.plik, szczyty.nazwa, szczyty.wysokosc, szczyty.pasmo, opis.opis FROM szczyty JOIN opis ON szczyty.id = opis.szczyty_id WHERE szczyty.id = $id;";
                    $result = $conn -> query($query);
                    $row = $result -> fetch_assoc();
                    echo "<img src='{$row['plik']}' alt='{$row['nazwa']}' class='duze'>";
                    echo "<h2>{$row['nazwa']}</h2>";
                    echo "<p>Wysokość: {$row['wysokosc']} m n.p.m.</p>";
                    echo "<p>Pasmo górskie: {$row['pasmo']}</p>";
                    echo "<p>{$row['opis']}</p>";
                }
            ?>
        </main>

        <section>
            <?php
                // Skrypt #2
                $query = "SELECT nazwa, plik FROM szczyty LIMIT 10;";
                $result = $conn -> query($query);
                while($row = $result -> fetch_assoc()) {
                    echo "<img src='{$row['plik']}' alt='{$row['nazwa']}' class='miniatury'>";
                }
            ?>
        </section>

        <div id="footer1">
            <h3>Kontakt</h3>
            <ul>
                <li>Zadzwoń do nas: 111 222 333</li>
                <li><a href="mailto:korona@gory.pl">Napisz do nas</a></li>
            </ul>
        </div>

        <div id="footer2">
            <h3>&copy; Wykonane przez: 0000000000</h3>
        </div>
    </body>
</html>

<?php
    $conn -> close();
?>