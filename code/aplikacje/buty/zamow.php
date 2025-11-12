<?php
$conn = mysqli_connect('localhost', 'root', '', 'obuwie');

$model = isset($_POST['model']) ? $_POST['model'] : '';
$rozmiar = isset($_POST['rozmiar']) ? $_POST['rozmiar'] : '';
$liczba_par = isset($_POST['liczba_par']) ? (int)$_POST['liczba_par'] : 1;

$sql = "SELECT buty.model, buty.nazwa, buty.cena, produkt.kolor, produkt.material, produkt.nazwa_pliku 
        FROM buty 
        JOIN produkt ON buty.model = produkt.model 
        WHERE buty.model = '$model'
        LIMIT 1";
$result = mysqli_query($conn, $sql);

if ($row = mysqli_fetch_assoc($result)) {
    $wartosc_calkowita = $liczba_par * $row['cena'];
    echo '<div class="produkt">';
    echo '<img src="' . htmlspecialchars($row['nazwa_pliku']) . '" alt="but męski">';
    echo '<h2>' . htmlspecialchars($row['nazwa']) . '</h2>';
    echo '<p>cena za ' . $liczba_par . ' par: ' . $wartosc_calkowita . ' zł</p>';
    echo '<p>Szczegóły produktu: ' . htmlspecialchars($row['kolor']) . ', ' . htmlspecialchars($row['material']) . '</p>';
    echo '<p>Rozmiar: ' . htmlspecialchars($rozmiar) . '</p>';
    echo '</div>';
} else {
    echo '<p>Nie znaleziono wybranego modelu buta.</p>';
}

mysqli_close($conn);
?>
