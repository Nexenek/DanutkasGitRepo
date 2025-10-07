<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Gry komputerowe</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Ranking gier komputerowych</h1>
    </header>
    
    <aside>
        <h3>Top 5 gier w tym miesiącu</h3>
        <ul>
            <?php
            $link = mysqli_connect('localhost', 'root', '', 'gry4tigr1');
            $zap3 = "SELECT `nazwa`, `punkty` FROM `gry`;";
            $wynik3 = mysqli_query($link, $zap3);
            while ($element = mysqli_fetch_assoc($wynik3)) {
                echo "<li>" . $element['nazwa'] . " <span id='punkty'>" . $element['punkty'] . "</span></li>";
            }
            ?>
        </ul>
        
        <h3>Nasz sklep</h3>
        <a href="http://sklep.gry.pl">Tu kupisz gry</a>
        
        <h3>Stronę wykonał</h3>
        <p>00000000000</p>
    </aside>
    
    <main>
        <?php
        $zap1 = "SELECT `id`, `nazwa`, `zdjecie` FROM `gry`;";
        $wynik1 = mysqli_query($link, $zap1);
        while ($blok = mysqli_fetch_assoc($wynik1)) {
            echo "<div class='gry'>";        
            echo "<img src='" . $blok['zdjecie'] . "' alt='" . $blok['nazwa'] . "' title='" . $blok['id'] . "'>";
            echo "<p>" . $blok['nazwa'] . "</p>";
            echo "</div>";
        }
        ?>
    </main>
    
    <section>
        <h3>Dodaj nową grę</h3>
        <form method="post" action="gry.php">
            <label for="nazwa">nazwa:</label>
            <input type="text" id="nazwa" name="nazwa"><br>
            
            <label for="opis">opis:</label>
            <input type="text" id="opis" name="opis"><br>
            
            <label for="cena">cena:</label>
            <input type="text" id="cena" name="cena"><br>
            
            <label for="zdjecie">zdjęcie:</label>
            <input type="text" id="zdjecie" name="zdjecie"><br>
            
            <button type="submit">DODAJ</button>
        </form>
    </section>
    
    <footer>
        <form method="post" action="gry.php">
            <input type="text" name="id_gry">
            <button type="submit">Pokaż opis</button>
        </form>
        <?php
        $id=$_POST['id_gry']??NULL;
        if(isset($id)){
            $zap2='SELECT `nazwa`, substring(opis, 1, 100) AS "opisNowy", `punkty`, `cena` FROM `gry` WHERE id = ' . $id . ';';
            $wynik2=mysqli_query($link,$zap2);
            $opis=mysqli_fetch_array($wynik2);
            echo  "<h2>" . $opis['nazwa'] . " " . $opis['punkty'] . " punktów " . $opis['cena'] . " zł" . "</h2>";
            echo  "<p>" . $opis['opisNowy'] . "...</p>";
        }
        ?>
    </footer>
    <?php
    $nazwa = $_POST['nazwa'] ?? NULL;
    $opis = $_POST['opis'] ?? NULL;
    $cena = $_POST['cena'] ?? NULL;
    $zdjecie = $_POST['zdjecie'] ?? NULL;
    if (isset($nazwa) && isset($opis) && isset($cena) && isset($zdjecie)) {
        $zap4 = "INSERT INTO `gry` (`nazwa`, `opis`, `punkty`, `cena`, `zdjecie`) VALUES ('" . $nazwa . "', '" . $opis . "', '0', '" . $cena . "', '" . $zdjecie . "');";
        mysqli_query($link, $zap4);
        echo "Dodano nową grę do bazy danych";
    }
    ?>
</body>
</html>