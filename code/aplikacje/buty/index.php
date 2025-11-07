<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Obuwie</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <h1>Obuwie męskie</h1>
    </header>
    <main>
        <form action="zamow.php" method="post">
            <label for="model">Model: </label>
            <select name="model" id="model">
                <?php
                //skrypt1
                ?>
            </select>
            <br>
            <label for="rozmiar">Rozmiar: </label>
            <select name="rozmiar" id="rozmiar">
                <?php
                for ($i = 40; $i <= 43; $i++) {
                    echo "<option value=\"$i\">$i</option>";
                }
                ?>
            </select>
            <br>
            <label for="liczba_par">Liczba par: </label>
            <input type="number" name="liczba_par" id="liczba_par" min="1">
            <br>
            <button type="submit">Zamów</button>
        </form>
        <?php
        //skrypt2
        ?>
    </main>
    <footer>
        <p>Autor strony: 123456</p>
    </footer>
</body>
</html>