<?php
    $conn = new mysqli("localhost", "root", "", "korona");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
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
                // Skrypt #1
                $query = "SELECT id, nazwa FROM szczyty ORDER BY wysokosc DESC;";
                $result = $conn -> query($query);
                while($row = $result -> fetch_assoc()) {
                    echo "<span><a href='szczyty.php?id={$row['id']}'>{$row['nazwa']}</a></span> ";
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