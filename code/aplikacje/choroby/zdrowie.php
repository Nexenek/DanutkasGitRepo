<?php
    $conn = mysqli_connect("localhost", "root", "", "choroby");
?>

<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styl.css">
        <title>Wykaz chorób</title>
    </head>
    <body>
        <header>
            <h1>Informacja o chorobach w Polsce</h1>
        </header>

        <nav>
            <a href="https://szpitale.pl/" target="_blank">Szpitale</a>
            <a href="https://www.przychodnie.pl/" target="_blank">Przychodnie</a>
            <a href="https://www.nfz.gov.pl/" target="_blank">NFZ</a>
        </nav>

        <main>
            <div id="lewy">
                <h2>Choroby zakaźne</h2>
                <ol>
                    <?php
                        // Skrypt #1
                        $query = "SELECT nazwa FROM choroby WHERE zakazna = 'T' ORDER BY nazwa ASC;";
                        $result = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_array($result)) {
                            echo "<li>".$row['nazwa']."</li>";
                        }
                    ?>
                </ol>
            </div>

            <div id="prawy">
                <h2>Objawy chorób</h2>
                <form action="zdrowie.php" method="post">
                    <select name="choroba" id="choroba">
                        <?php
                            // Skrypt #2
                            $query = "SELECT id, nazwa FROM choroby;";
                            $result = mysqli_query($conn, $query);
                            while($row = mysqli_fetch_array($result)) {
                                echo "<option value='".$row['id']."'>".$row['nazwa']."</option>";
                            }
                        ?>
                    </select>
                    <button type="submit" name="sprawdz" id="sprawdz">Sprawdź</button>
                </form>
                <div id="wynik">
                    <?php
                        // Skrypt #3
                        if(isset($_POST['sprawdz'])) {
                            $choroba_id = $_POST['choroba'];
                            $query = "SELECT o.nazwa FROM objawy o JOIN choroby_objawy co ON o.id = co.id_objawy WHERE co.id_choroby = '$choroba_id';";
                            $result = mysqli_query($conn, $query);
                            while($row = mysqli_fetch_array($result)) {
                                echo "<span>".$row['nazwa']."</span> ";
                            }
                        }
                    ?>
                </div>
            </div>
        </main>

        <footer>
            <p>Stronę opracował: 0000000000000</p>
        </footer>

        <img src="zdrowia.png" alt="Życzymy zdrowia!">
    </body>
</html>

<?php
    $conn -> close();
?>
