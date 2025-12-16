<?php
    $conn = mysqli_connect("localhost","root","","forumpsy");

    // Skrypt #2
    if(!empty($_POST["odpowiedz"])) {
        $odpowiedz = $_POST["odpowiedz"];

        $sql = "INSERT INTO odpowiedzi VALUES (NULL, 1, 5, '$odpowiedz');";
        $result = $conn->query($sql);
    }
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forum o psach</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Forum miłośników psów</h1>
        </header>

        <div id="lewy">
            <img src="avatar.png" alt="Użytkownik forum">
            <?php
                // Skrypt #1
                $sql = "SELECT konta.nick, konta.postow, pytania.pytanie FROM konta, pytania WHERE konta.id = pytania.konta_id AND pytania.id = 1;";
                $result = mysqli_query($conn, $sql);

                while($row = mysqli_fetch_array($result)) {
                    echo "<h4>Użytkownik $row[0]</h4>";
                    echo "<p>$row[1] postów na forum</p>";
                    echo "<p>$row[2]</p>";
                }
            ?>
            <video controls autoplay loop>
                <source src="video.mp4" type="video/mp4">
            </video>
        </div>

        <div id="prawy">
            <form action="index.php" method="post">
                <textarea rows="4" cols="40" name="odpowiedz" id="odpowiedz"></textarea><br>
                <button type="submit">Dodaj odpowiedź</button>
            </form>
            <h2>Odpowiedzi na pytanie</h2>
            <ol>
                <?php
                    // Skrypt #3
                    $sql = "SELECT odpowiedzi.odpowiedz, konta.nick FROM odpowiedzi, konta WHERE odpowiedzi.konta_id = konta.id AND odpowiedzi.Pytania_id = 1;";
                    $result = mysqli_query($conn, $sql);

                    while($row = mysqli_fetch_array($result)) {
                        echo "<li>$row[0] <i>$row[1]</i></li>";
                        echo "<hr>";
                    }
                ?>
            </ol>
        </div>

        <footer>
            Autor: 00000000000 <a href="http://mojestrony.pl/" target="_blank">Zobacz nasze realizacje</a>
        </footer>
    </body>
</html>

<?php
    mysqli_close($conn);
?>