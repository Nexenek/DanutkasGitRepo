<!DOCTYPE html>
<html lang="pl">
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
            
            ?>
        </ul>
        
        <h3>Nasz sklep</h3>
        <a href="http://sklep.gry.pl">Tu kupisz gry</a>
        
        <h3>Stronę wykonał</h3>
        <p>00000000000</p>
    </aside>
    
    <main>
        <?php
        
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
        
        ?>
    </footer>
</body>
</html>