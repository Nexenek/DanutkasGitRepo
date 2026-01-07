<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Forum o psach</title>
        <link rel="stylesheet" href="styl4.css">
    </head>
    <body>
        <header>
            <h1>Forum wielbicieli psów</h1>
        </header>

        <div id="lewy">
            <img src="obraz.jpg" alt="foksterier">
        </div>

        <div id="prawy1">
            <h2>Zapisz się</h2>
            <form action="logowanie.php" method="post">
                <label for="login">login:</label> <input type="text" name="login" id="login"><br>
                <label for="haslo">hasło:</label> <input type="password" name="haslo" id="haslo"><br>
                <label for="haslo2">powtórz hasło:</label> <input type="password" name="haslo2" id="haslo2"><br>
                <button type="submit">Zapisz</button>
            </form>
            <?php
                // Skrypt #1
                if(isset($_POST["login"]) && isset($_POST["haslo"]) && isset($_POST["haslo2"])) {
                    if(!empty($_POST["login"]) && !empty($_POST["haslo"]) && !empty($_POST["haslo2"])) {
                        $login = $_POST["login"];
                        $haslo = $_POST["haslo"];
                        $haslo2 = $_POST["haslo2"];
                        $istniejelogin = false;

                        $conn = mysqli_connect("localhost","root","","psy");

                        $sql = "SELECT login FROM uzytkownicy;";
                        $result = mysqli_query($conn, $sql);

                        while($row = mysqli_fetch_array($result)) {
                            if($login == $row[0]) {
                                echo "<p>login występuje w bazie danych, konto nie zostało dodane</p>";
                                $istniejelogin = true;
                            }
                        }

                        if($istniejelogin == false) {
                            if($haslo == $haslo2) {
                                $hash = sha1($haslo);

                                $sql = "INSERT INTO uzytkownicy VALUES (NULL, '$login', '$hash');";
                                $result = mysqli_query($conn, $sql);

                                echo "<p>Konto zostało dodane</p>";
                            }
                            else { 
                                echo "<p>hasła nie są takie same, konto nie zostało dodane</p>";
                            }
                        }

                        mysqli_close($conn);
                    }
                    else {
                        echo "<p>wypełnij wszystkie pola</p>";
                    }
                }
            ?>
        </div>

        <div id="prawy2">
            <h2>Zapraszamy wszystkich</h2>
            <ol>
                <li>właścicieli psów</li>
                <li>weterynarzy</li>
                <li>tych, co chcą kupić psa</li>
                <li>tych, co lubią psy</li>
            </ol>
            <a href="regulamin.html">Przeczytaj regulamin forum</a>
        </div>

        <footer>
            Stronę wykonał: 2183627382334
        </footer>
    </body>
</html>