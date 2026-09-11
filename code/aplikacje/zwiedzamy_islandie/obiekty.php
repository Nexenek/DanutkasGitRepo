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
    <main>
        <h2>Opis miejsca</h2>
        <section id="sekcja-opis">

        </section>
    </main>
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
    <footer>
        <hl>
        <p>Autor: 00000000000</p>
    </footer>
</body>
</html>
