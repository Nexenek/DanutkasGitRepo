<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Firma  Przewozowa</title>
</head>
<body>
    <header>
        <h1>Firma Przewozowa Półdarmo
    </header>
    <nav>
        <a href="kwerenda1.png">kwerenda1</a>
        <a href="kwerenda2.png">kwerenda2</a>
        <a href="kwerenda3.png">kwerenda3</a>
        <a href="kwerenda4.png">kwerenda4</a>
    </nav>
    <main>
        <section id="lewa">
            <h2>Zadania do wykonania</h2>
            <table>
                <tr><th>Zadanie do wykonania</th><th>Data realizacji</th><th>Akcja</th></tr>
                <?php
                ?>
            </table>
            <form action="przewozy.php" method="post">
                <label for="zadanie">Zadanie do wykonania:</label>
                <input type="text" name="zadanie"><br>
                <label for="data">Data realizacji:</label>
                <input type="date" name="data"><br>
                <input type="submit" value="Dodaj">
            </form>
        </section>
        <section id="prawa">
            <img src="auto.png" alt="auto firmowe">
            <h3>Nasza specjalność</h3>
            <ul>
                <li>Przeprowadzki</li>
                <li>Przewóz mebli</li>
                <li>Przesyłki gabarytowe</li>
                <li>Wynajem pojazdów</li>
                <li>Zakupy towarów</li>
            </ul>
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000000</p>
    </footer>
</body>
</html>