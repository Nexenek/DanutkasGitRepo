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
                    $zap32 = 'SELECT nazwa FROM obiekty WHERE panstwo="Islandia" AND idRodzaj=14';
                    $query = mysqli_query($link, $zap32);
                    while ($row = mysqli_fetch_array($query)) {
                        echo "<li>" . $row[0] . "</li>";
                    }
                ?>
            </ol></a></li>
        </ul>
    </aside>
    <main>
        <h2>Galeria</h2>
        <section id="sekcja-galeria">
        <?php
            $zap1 = "SELECT idObiekt, plik, nazwa FROM obiekty WHERE panstwo='Islandia';";
            $query = mysqli_query($link, $zap1);
            while($obraz = mysqli_fetch_array($query)) {
                echo "<a href='obiekty.php?idObiekt=$obraz[0]'><img src=$obraz[1] alt=$obraz[2] title=$obraz[2] class='miniatury'></a>";
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
