<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Biblioteka miejska</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <?php
        // skrypt 1
        ?>
    </header>

    <section>
        <h2>Liryka</h2>
        <form method="post" action="biblioteka.php">
            <select name="ksiazka">
                <?php
                // skrypt 2 - gatunek: liryka
                ?>
            </select>
            <input type="submit" value="Rezerwuj">
        </form>
        <?php
        // skrypt 3
        ?>
    </section>

    <section>
        <h2>Epika</h2>
        <form method="post" action="biblioteka.php">
            <select name="ksiazka">
                <?php
                // skrypt 2 - gatunek: epika
                ?>
            </select>
            <input type="submit" value="Rezerwuj">
        </form>
    </section>

    <section>
        <h2>Dramat</h2>
        <form method="post" action="biblioteka.php">
            <select name="ksiazka">
                <?php
                // skrypt 2 - gatunek: dramat
                ?>
            </select>
            <input type="submit" value="Rezerwuj">
        </form>
    </section>

    <section>
        <h2>Zaległe książki</h2>
        <ul>
            <?php
            // skrypt 4
            ?>
        </ul>
    </section>

    <footer>
        <p><strong>Autor: 578947432234</strong></p>
    </footer>
</body>
</html>