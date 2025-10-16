<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Biblioteka miejska</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <?php
        for ($i=0; $i<20; $i++) {
            echo "<img src='obraz.png'>";
        }
        ?>
    </header>

    <section>
        <h2>Liryka</h2>
        <form method="post" action="biblioteka.php">
            <select name="liryka">
                <?php
                $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
                $zap1 = "SELECT `id`, `tytul` FROM `ksiazka` WHERE gatunek='liryka';";
                $wynik = mysqli_query($link, $zap1);
                while ($row = mysqli_fetch_array($wynik)) {
                    echo "<option value='$row[0]'>$row[1]</option>";
                }
                ?>
            </select>
            <input type="submit" name="rezerwuj_liryka" value="Rezerwuj">
        </form>
        <?php
        if (isset($_POST['rezerwuj_liryka'])) {
            $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
            $id = $_POST['liryka'];
            $zap5 = "SELECT tytul FROM ksiazka WHERE id=" . $id . ";";
            $wynik2 = mysqli_query($link, $zap5);
            while ($row = mysqli_fetch_array($wynik2)) {
                echo "<p>Książka " . $row['tytul'] . " została zarezerwowana</p>";
            }
            $zap4 = "UPDATE ksiazka SET rezerwacja=1 WHERE id=" . $id . ";";
            mysqli_query($link, $zap4);
        }
        ?>
    </section>

    <section>
        <h2>Epika</h2>
        <form method="post" action="biblioteka.php">
            <select name="epika">
                <?php
                $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
                $zap1 = "SELECT `id`, `tytul` FROM `ksiazka` WHERE gatunek='epika';";
                $wynik = mysqli_query($link, $zap1);
                while ($row = mysqli_fetch_array($wynik)) {
                    echo "<option value='$row[0]'>$row[1]</option>";
                }
                ?>
            </select>
            <input type="submit" name="rezerwuj_epika" value="Rezerwuj">
        </form>
        <?php
        if (isset($_POST['rezerwuj_epika'])) {
            $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
            $id = $_POST['epika'];
            $zap5 = "SELECT tytul FROM ksiazka WHERE id=" . $id . ";";
            $wynik2 = mysqli_query($link, $zap5);
            while ($row = mysqli_fetch_array($wynik2)) {
                echo "<p>Książka " . $row['tytul'] . " została zarezerwowana</p>";
            }
            $zap4 = "UPDATE ksiazka SET rezerwacja=1 WHERE id=" . $id . ";";
            mysqli_query($link, $zap4);
        }
        ?>
    </section>

    <section>
        <h2>Dramat</h2>
        <form method="post" action="biblioteka.php">
            <select name="dramat">
                <?php
                $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
                $zap1 = "SELECT `id`, `tytul` FROM `ksiazka` WHERE gatunek='dramat';";
                $wynik = mysqli_query($link, $zap1);
                while ($row = mysqli_fetch_array($wynik)) {
                    echo "<option value='$row[0]'>$row[1]</option>";
                }
                ?>
            </select>
            <input type="submit" name="rezerwuj_dramat" value="Rezerwuj">
        </form>
        <?php
        if (isset($_POST['rezerwuj_dramat'])) {
            $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
            $id = $_POST['dramat'];
            $zap5 = "SELECT tytul FROM ksiazka WHERE id=" . $id . ";";
            $wynik2 = mysqli_query($link, $zap5);
            while ($row = mysqli_fetch_array($wynik2)) {
                echo "<p>Książka " . $row['tytul'] . " została zarezerwowana</p>";
            }
            $zap4 = "UPDATE ksiazka SET rezerwacja=1 WHERE id=" . $id . ";";
            mysqli_query($link, $zap4);
        }
        ?>
    </section>

    <section>
        <h2>Zaległe książki</h2>
        <ul>
            <?php
            $link = mysqli_connect("localhost", "root", "", "rodzaje_literatury");
            $zap = "SELECT k.tytul, w.id_cz, w.data_odd FROM ksiazka k, wypozyczenia w WHERE w.id_ks=k.id ORDER BY w.data_odd ASC LIMIT 15;";
            $wynik = mysqli_query($link, $zap);
            while ($row = mysqli_fetch_array($wynik)) {
                echo "<li>{$row['tytul']} {$row['id_cz']} {$row['data_odd']}</li>";
            }
            ?>
        </ul>
    </section>

    <footer>
        <p><strong>Autor: 578947432234</strong></p>
    </footer>
</body>
</html>