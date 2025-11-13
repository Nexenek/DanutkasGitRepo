<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <title>Wyszukiwarka miast</title>
        <link rel="stylesheet" href="style.css">
        <link rel="shortcut icon" href="fav.png" type="image/x-icon">
    </head>
    <body>
        <main>
            <header>
                <img src="baner.jpg" alt="Polska">
            </header>

            <div id="lewy1">
                <h4>Podaj początek nazwy miasta</h4>
                <form action="index.php" method="post">
                    <input type="text" name="miasto" id="miasto">
                    <input type="submit" value="Szukaj" id="szukaj" name="szukaj">
                </form>
            </div>

            <div id="prawy">
                <h1>Wyniki wyszukiwania miast z uwzględnieniem filtra:</h1>
                <?php
                    if (isset($_POST['szukaj'])) {
                        $miasto = $_POST['miasto'];
                        echo "<p>$miasto</p>";

                        $conn = mysqli_connect("localhost", "root", "", "wykaz");
                        $sql = "SELECT miasta.nazwa AS miasta_nazwa, wojewodztwa.nazwa AS wojewodztwa_nazwa FROM miasta JOIN wojewodztwa ON wojewodztwa.id = id_wojewodztwa WHERE miasta.nazwa LIKE '$miasto%' ORDER BY miasta.nazwa;";
                        $result = mysqli_query($conn, $sql);

                        echo "<table>";
                            echo "<tr>";
                                echo "<th>Miasto</th>";
                                echo "<th>Województwo</th>";
                            echo "</tr>";
                        while ($row = mysqli_fetch_array($result)) {
                            echo "<tr>";
                                echo "<td>".$row['miasta_nazwa']."</td>";
                                echo "<td>".$row['wojewodztwa_nazwa']."</td>";
                            echo "</tr>";
                        }
                        echo "</table>";

                        mysqli_close($conn);
                    }

                ?>
            </div>

            <div id="lewy2">
                <p>Egzamin INF.03</p>
                <p>Autor: 00000000000000</p>
            </div>
        </main>
    </body>
</html>