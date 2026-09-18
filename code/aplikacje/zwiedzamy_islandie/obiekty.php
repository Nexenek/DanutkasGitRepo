<!DOCTYPE HTML>
<html lang="PL-pl">
    <head>
        <meta charset="UTF-8">
        <title>Isladnia</title>
        <link rel="stylesheet" type="text/css" href="styl.css">
    </head>
<body>
    <header>
        <a href="islandia.php"><h1>Zwiedzaj Islandię</h1></a>
    </header>
    <aside>
        <h3>Do Zwiedzania</h3>
        <ul><li>Wodospady:<ol id="wodospady">
            <?php
                $link = mysqli_connect('localhost', 'root', '', 'islandia');
                $zap3 = 'SELECT nazwa FROM obiekty WHERE panstwo="Islandia" AND idRodzaj=10';
                $query = mysqli_query($link, $zap3);
                while ($row = mysqli_fetch_array($query)) {
                    echo "<li>" . $row[0] . "</li>";
                }
            ?>
            </ol></li>
            <li>Siedliska zwierząt:<ol id="siedliska">
                <?php
                    $link = mysqli_connect('localhost', 'root', '', 'islandia');
                    $zap32 = 'SELECT nazwa FROM obiekty WHERE panstwo="Islandia" AND idRodzaj=14';
                    $query = mysqli_query($link, $zap32);
                    while ($row = mysqli_fetch_array($query)) {
                        echo "<li>" . $row[0] . "</li>";
                    }
                ?>
            </ol></li>
        </ul>
    </aside>
    <main>
        <h2>Opis miejsca</h2>
        <section id="sekcja-opis">
        <?php
            if (isset($_GET['idObiekt'])) {
                $idObiekt = $_GET['idObiekt'];
                $zap2 = "SELECT plik, nazwa, nazwaCechy, wartoscCechy, opis, rodzaj FROM obiekty o, rodzaje r WHERE r.idRodzaj=o.idRodzaj AND idObiekt=$idObiekt;";
                $query = mysqli_query($link, $zap2);
                $row=mysqli_fetch_array($query);
                echo "<img src='$row[0]' alt='$row[1]'>";
                echo "<h2>$row[1]</h2>";
                echo "<h3>$row[5]</h3>";
                echo "<p>$row[2]: $row[3]</p>";
                echo "<p>$row[4]</p>";
            }
        ?>
        </section>
    </main>
    <footer>
        <hr>
        <p>Autor: 00000000000</p>
    </footer>
</body>
</html>
