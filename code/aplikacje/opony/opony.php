<?php
// Skrypt 1
$polaczenie = new mysqli('localhost', 'root', '', 'opony');
header("Refresh: 10");
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>OPONY</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>OPONY</h1>
    </header>
    <main>
        <aside>
            <?php
            $q1 = "SELECT * FROM opony ORDER BY cena ASC LIMIT 10";
            $res1 = $polaczenie->query($q1);
            while ($row = $res1->fetch_assoc()) {
                if ($row['sezon'] == 'letnia') $img = 'lato.png';
                elseif ($row['sezon'] == 'zimowa') $img = 'zima.png';
                else $img = 'uniwer.png';
                echo '<div class="opona">';
                echo '<img src="'.$img.'" alt="'.$row['sezon'].'">';
                echo '<h4>Opona: '.$row['producent'].' '.$row['model'].'</h4>';
                echo '<h3>Cena: '.$row['cena'].'</h3>';
                echo '</div>';
            }
            ?>
            <p><a href="https://opona.pl/">więcej ofert</a></p>
        </aside>
        <section>
            <img src="opona.png" alt="Opona">
            <h2>Opona dnia</h2>
            <?php
            $q2 = "SELECT producent, model, sezon, cena FROM opony WHERE nr_kat = 9";
            $res2 = $polaczenie->query($q2);
            $row2 = $res2->fetch_assoc();
            echo '<h2>'.$row2['producent'].' model '.$row2['model'].'</h2>';
            echo '<h2>Sezon: '.$row2['sezon'].'</h2>';
            echo '<h2>Tylko '.$row2['cena'].' zł!</h2>';
            ?>
        </section>
        <section>
            <h2>Najnowsze zamówienie</h2>
            <?php
            $q3 = "SELECT z.id_zam, z.ilosc, o.model, o.cena FROM zamowienie z JOIN opony o ON z.nr_kat = o.nr_kat ORDER BY RAND() LIMIT 1";
            $res3 = $polaczenie->query($q3);
            $row3 = $res3->fetch_assoc();
            $wartosc = $row3['ilosc'] * $row3['cena'];
            echo '<h2>'.$row3['id_zam'].' '.$row3['ilosc'].' sztuki modelu '.$row3['model'].'</h2>';
            echo '<h2>Wartość zamówienia '.$wartosc.' zł</h2>';
            ?>
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 123456</p>
    </footer>
</body>
</html>