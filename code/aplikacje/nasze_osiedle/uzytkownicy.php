<?php
    $conn = new mysqli("localhost","root","","portal");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Portal społecznościowy</title>
        <link rel="stylesheet" href="styl5.css">
    </head>
    <body>
        <div id="baner1">
            <h2>Nasze osiedle</h2>
        </div>

        <div id="baner2">
            <?php
                // Skrypt #1
                $sql = "SELECT COUNT(*) FROM dane;";
                $result = $conn->query($sql);

                while($row = $result -> fetch_array()) {
                    echo "<h5>Liczba użytkowników portalu: $row[0]</h5>";
                }
            ?>
        </div>
        
        <div id="lewy">
            <h3>Logowanie</h3>
            <form action="uzytkownicy.php" method="post">
                <label for="login">login</label><br>
                <input type="text" name="login" id="login"><br>
                <label for="haslo">hasło</label><br>
                <input type="password" name="haslo" id="haslo"><br>
                <button type="submit">Zaloguj</button>
            </form>
        </div>

        <div id="prawy">
            <h3>Wizytówka</h3>
            <?php
                // Skrypt #2
                if(isset($_POST["login"]) && isset($_POST["haslo"])) {
                    echo "<div class='wizytowka'>";
                    if(!empty($_POST["login"]) && !empty($_POST["haslo"])) {
                        $login = $_POST["login"];
                        $haslo = $_POST["haslo"];
                        $hash = sha1($haslo);

                        $sql = "SELECT haslo FROM uzytkownicy WHERE login = '$login';";
                        $result = $conn->query($sql);

                        if($result->num_rows == 1) {
                            while($row = $result -> fetch_array()) {
                                $haslobaza = $row[0];
                            }

                            if($hash == $haslobaza) {
                                $sql = "SELECT u.login, d.rok_urodz, d.przyjaciol, d.hobby, d.zdjecie FROM uzytkownicy u INNER JOIN dane d ON u.id = d.id WHERE u.login = '$login';";
                                $result = $conn->query($sql);

                                while($row = $result -> fetch_array()) {
                                    $wiek = date("Y") - $row[1];
                                    echo "<img src='$row[4]' alt='osoba'>";
                                    echo "<h4>$row[0] ($wiek)</h4>";
                                    echo "<p>hobby: $row[3]</p>";
                                    echo "<h1><img src='icon-on.png' alt='obraz serca'> $row[2]</h1>";
                                    echo "<a href='dane.html'>Więcej informacji</a>";
                                }
                            }

                            else {
                                echo "hasło nieprawidłowe";
                            }
                        }
                        else {
                            echo "login nie istnieje";
                        }
                    }
                    else {
                        echo "Uzupełnij wszystkie pola";
                    }
                    echo "</div>";
                }
            ?>
        </div>

        <footer>
            Stronę wykonał: <a href="https://ee-informatyk.pl/" target="_blank" style="color: unset;text-decoration: none;">EE-Informatyk.pl</a>
        </footer>
    </body>
</html>

<?php
    $conn -> close();
?>