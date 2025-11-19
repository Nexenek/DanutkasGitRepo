<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ZDOBYWCY GÓR</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <header>
            <h1>Klub zdobywców gór polskich</h1>
        </header>

        <nav>
            <a href="kw1.png">kwerenda1</a>
            <a href="kw2.png">kwerenda2</a>
            <a href="kw3.png">kwerenda3</a>
            <a href="kw4.png">kwerenda4</a>
        </nav>

        <div id="lewy">
            <img src="logo.png" alt="logo zdobywcy">
            <h3>razem z nami:</h3>
            <ul>
                <li>wyjazdy</li>
                <li>szkolenia</li>
                <li>rekreacja</li>
                <li>wypoczynek</li>
                <li>wyzwania</li>
            </ul>
        </div>

        <main>
            <h2>Dołącz do naszego zespołu!</h2>
            <p>Wpisz swoje dane do formularza:</p>
            <form action="zdobywcy.php" method="post">
                <label for="nazwisko">Nazwisko:</label>
                <input type="text" id="nazwisko" name="nazwisko" required>

                <label for="imie">Imię:</label>
                <input type="text" id="imie" name="imie" required>

                <label for="funkcja">Funkcja:</label>
                <select id="funkcja" name="funkcja">
                    <option value="uczestnik">uczestnik</option>
                    <option value="przewodnik">przewodnik</option>
                    <option value="zaopatrzeniowiec">zaopatrzeniowiec</option>
                    <option value="organizator">organizator</option>
                    <option value="ratownik">ratownik</option>
                </select>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <input type="submit" value="Dodaj">
            </form>

            <table>
                <thead>
                    <tr>
                        <th>Nazwisko</th>
                        <th>Imię</th>
                        <th>Funkcja</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $conn = new mysqli(hostname: "localhost",username: "root",password: "",database: "zdobywcy");

                        if ($_SERVER["REQUEST_METHOD"] == "POST") {
                            $nazwisko = $_POST['nazwisko'];
                            $imie = $_POST['imie'];
                            $funkcja = $_POST['funkcja'];
                            $email = $_POST['email'];

                            // Skrypt - dodawanie
                            $sql = "INSERT INTO osoby VALUES (NULL, '$nazwisko', '$imie', '$funkcja', '$email');";
                            $result = $conn->query(query: $sql);
                        }

                        // Skrypt - lista
                        $sql = "SELECT nazwisko, imie, funkcja, email FROM osoby;";
                        $result = $conn -> query($sql);
                        while ($row = $result -> fetch_assoc()) {
                            $nazwisko = $row["nazwisko"];
                            $imie = $row["imie"];
                            $funkcja = $row["funkcja"];
                            $email = $row["email"];

                            echo "<tr>";
                                echo "<th>$nazwisko</th>";
                                echo "<th>$imie</th>";
                                echo "<th>$funkcja</th>";
                                echo "<th>$email</th>";
                            echo "</tr>";
                        }
                        $conn -> close();
                    ?>
                </tbody>
            </table>

        </main>

        <footer>
            <p>Stronę wykonał: <a href="https://ee-informatyk.pl" target="_blank" style="text-decoration: none;color: unset;">EE-Informatyk.pl</a></p>
        </footer>
    </body>
</html>