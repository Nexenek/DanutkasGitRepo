<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Kwiaty</title>
        <link rel="stylesheet" href="styl.css">
    </head>
    <body>
        <header>
            <h1>Moje kwiaty</h1>
        </header>

        <div id="lewy">
            <h3>Kwiaty dla Ciebie!</h3>
            <a href="https://www.swiatkwiatow.pl/">Rozpoznaj kwiaty</a><br>
            <a href="znajdz.php">Znajdź kwiaciarnię</a><br>
            <img src="gozdzik.jpeg" alt="Goździk">
        </div>

        <div id="prawy">
            <img src="gerbera.jpeg" alt="Gerbera">
            <img src="gozdzik.jpeg" alt="Goździk">
            <img src="roza.jpeg" alt="Róża">
            <p>Podaj miejscowość, w której poszukujesz kwiaciarni:</p>
            <form action="znajdz.php" method="post">
                <input type="text" name="miejscowosc" id="miejscowosc"> <button type="submit">SPRAWDŹ</button>
            </form>
            <?php
                // Skrypt #1
                $conn = mysqli_connect("localhost","root","","kwiaciarnia");

                if(isset($_POST["miejscowosc"])) {
                    $miejscowosc = $_POST["miejscowosc"];

                    $sql = "SELECT nazwa, ulica FROM kwiaciarnie WHERE miasto = '$miejscowosc';";
                    $result = mysqli_query($conn, $sql);

                    while($row = mysqli_fetch_array($result)) {
                        echo $row["nazwa"].", ".$row["ulica"]."<br>";
                    }

                    mysqli_close($conn);
                }
            ?>
        </div>

        <footer>
            <h3>Stronę opracował: 0000000000000000</h3>
        </footer>
    </body>
</html>