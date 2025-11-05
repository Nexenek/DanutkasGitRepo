<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="styl.css">
    <title>Kalendarz</title>
</head>
<body>
    <header>
            <h1>Dni, miesiące, lata...</h1>
    </header>
    <nav>
        <P>skrypt 1</p>
    </nav>
    <section id="lewa">
        <table>
            <tr>
                <th>Miesiąc</th>
                <th>Liczba dni</th>
            </tr>
            <tr>
                <td>Styczeń</td>
                <td>31</td>
            </tr>
            <tr>
                <td rowspan="2">Luty</td>
                <td>28</td>
            </tr>
            <tr>
                <td>29 (rok przestępny)</td>
            </tr>
            <tr>
                <td>Marzec</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Kwiecień</td>
                <td>30</td>
            </tr>
            <tr>
                <td>Maj</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Czerwiec</td>
                <td>30</td>
            </tr>
            <tr>
                <td>Lipiec</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Sierpień</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Wrzesień</td>
                <td>30</td>
            </tr>
            <tr>
                <td>Październik</td>
                <td>31</td>
            </tr>
            <tr>
                <td>Listopad</td>
                <td>30</td>
            </tr>
            <tr>
                <td>Grudzień</td>
                <td>31</td>
            </tr>
        </table>
    </section>
    <section id="srodek">
        <h2>Sprawdź kto ma urodziny</h2>
        <form method="post" action="kalendarz.php">
            <label for="data">Wybierz datę:</label>
            <input type="date" id="data" name="data" min="2024-01-01" max="2024-12-31" required>
            <button type="submit">wyślij</button>
        </form>
        <?php
        // Efekt działania Skryptu 2
        ?>
    </section>
    <section id="prawa">
        <a href="https://pl.wikipedia.org/wiki/Kalendarz_Majów" target="_blank">
            <img src="kalendarz.gif" alt="Kalendarz Majów">
        </a>
        <h2>Rodzaje kalendarzy</h2>
        <ol>
            <li>
                Kalendarze słoneczne
                <ul>
                    <li>gregoriański</li>
                    <li>julijański</li>
                </ul>
            </li>
            <li>
                Kalendarze księżycowe
                <ul>
                    <li>islamski</li>
                    <li>żydowski</li>
                </ul>
            </li>
            <li>
                Kalendarze lunisolarne
                <ul>
                    <li>chiński</li>
                    <li>hinduski</li>
                </ul>
            </li>
        </ol>
    </section>
    <footer>
        <p>Stronę opracował(a): 238642342346823423</p>
</body>
</html>