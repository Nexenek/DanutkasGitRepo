<?php
// biblioteka.php - strona główna biblioteki szkolnej
// Zgodnie z wymaganiami: HTML5, lang=pl, UTF-8
header('Content-Type: text/html; charset=utf-8');
?>
<!doctype html>
<html lang="pl">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>BIBLIOTEKA SZKOLNA</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header>
    <h2>STRONA BIBLIOTEKI SZKOLNEJ WIEDZAMIN</h2>
  </header>

  <section>
    <h3>Nasze dzisiejsze propozycje:</h3>
    <table>
      <tr>
        <th>Autor</th>
        <th>Tytuł</th>
        <th>Katalog</th>
      </tr>
      <?php
      // Połączenie z bazą i pobranie kilku wierszy
      $polaczenie = mysqli_connect('localhost','root','','biblioteka');
      if (!$polaczenie) {
        echo "<tr><td colspan=3>Brak połączenia z bazą: " . htmlspecialchars(mysqli_connect_error()) . "</td></tr>";
      } else {
        // zapytanie 4 (przykładowe): pobierz 5 pierwszych rekordów
        $zapytanie = "SELECT autor, tytul, kod FROM ksiazki LIMIT 5";
        file_put_contents('kwerendy.txt', $zapytanie.PHP_EOL);
        $wynik = mysqli_query($polaczenie, $zapytanie);
        if ($wynik) {
          while ($wiersz = mysqli_fetch_row($wynik)) {
            echo '<tr>';
            echo '<td>'.htmlspecialchars($wiersz[0]).'</td>';
            echo '<td>'.htmlspecialchars($wiersz[1]).'</td>';
            echo '<td>'.htmlspecialchars($wiersz[2]).'</td>';
            echo '</tr>';
          }
          mysqli_free_result($wynik);
        } else {
          echo "<tr><td colspan=3>Błąd w zapytaniu: " . htmlspecialchars(mysqli_error($polaczenie)) . "</td></tr>";
        }
        mysqli_close($polaczenie);
      }
      ?>
    </table>
  </section>

  <main>
    <?php
    // Wczytaj streszczenia z pliku teksty.txt
    $teksty = file_get_contents('teksty.txt');
    $paragrafy = preg_split('/\R{2,}/', trim($teksty));
    // Zakładamy, że zawiera tytuły i streszczenia w znanym porządku.
    $summaries = array_slice($paragrafy, 2, 3);
    $images = ['ksiazka1.png','ksiazka2.png','ksiazka3.png'];
    $captions = [
      "HANS CHRISTIAN ANDERSEN<br><strong>Ropucha</strong>",
      "MARIA KONOPNICKA<br><strong>Przygoda z lalką</strong>",
      "IGNACY KRASICKI<br><strong>Przyjaciel</strong>",
    ];

    for ($i=0;$i<3;$i++) {
      echo '<article>';
      // obrazki w repo są w formacie png; wymaganie egzaminacyjne mówi jpg,
      // przy braku jpg używamy dostępnych png (użytkownik może przekopiować jako jpg lokalnie).
      $src = $images[$i];
      echo '<figure>';
      echo '<img src="'.htmlspecialchars($src).'" alt="okładka książki">';
      echo '</figure>';
      echo '<div class="title-box" style="font-family: serif;">'. $captions[$i] .'</div>';
      $text = isset($summaries[$i]) ? nl2br(htmlspecialchars($summaries[$i])) : '';
      echo '<p>'.$text.'</p>';
      echo '</article>';
    }
    ?>
  </main>

  <footer>
    <?php $numer = '00000000000'; ?>
    Stronę wykonał: <?php echo $numer; ?>
  </footer>
</body>
</html>
