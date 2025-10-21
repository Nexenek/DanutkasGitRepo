<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Biuro turystyczne</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="wczasy.html">Wczasy</a>
            <li><a href="wycieczki.html">Wycieczki</a>
            <li><a href="allinclusive.html">All inclusive</a>
    </nav>
    <main>
        <aside>
            <h3>Twój cel wyprawy</h3>
            <form action="index.php" method="post">
                <label for="miejsce">Miejsce wycieczki</label>
                <select name="miejsce" id="miejsce">
                    <?php
                    // Skrypt 1
                    ?>
                </select>
                <br>
                <label for="dorosli">Ile dorosłych?</label>
                <input type="number" name="dorosli" id="dorosli" min="1" required>
                <br>
                <label for="dzieci">Ile dzieci?</label>
                <input type="number" name="dzieci" id="dzieci" min="0" required>
                <br>
                <label for="termin">Termin</label>
                <input type="date" name="termin" id="termin" required>
                <br>
                <button type="submit" formaction="skrypt2.php">Symulacja ceny</button>
            </form>
            <h4>Koszt wycieczki</h4>
            <?php
            // Skrypt 2
            ?>
        </aside>
        <section>
            <h3>Wycieczki</h3>
            <?php
            // Skrypt 3
            ?>
        </section>
    </main>
    <footer>
        <p>Autor: Twoja Matka</p>
    </footer>
</body>
</html>