<?php
    $conn = mysqli_connect(hostname: "localhost",username: "root",password: "",database: "firma");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Firma szkoleniowa</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
            <img src="baner.jpg" alt="Szkolenia">
        </header>

        <nav>
            <ul>
                <li><a href="index.html">Strona główna</a></li>
                <li><a href="szkolenia.php">Szkolenia</a></li>
            </ul>
        </nav>

        <main>
            <?php
                $sql = "SELECT Data, Temat FROM szkolenia ORDER BY Data;";
                $result = mysqli_query($conn, $sql);
                while($row = mysqli_fetch_array($result)) {
                    echo "<p>".$row["Data"]." ".$row['Temat']."</p>";
                    file_put_contents("harmonogram.txt", $row["Data"] . " " . $row["Temat"] . PHP_EOL, FILE_APPEND);
                }
            ?>
        </main>

        <footer>
            <h2>Firma szkoleniowa, ul. Główna 1, 23-456 Warszawa</h2>
            <p>Autor: 78946784734623746834</p>
        </footer>
    </body>
</html>

<?php
    $conn->close();
?>