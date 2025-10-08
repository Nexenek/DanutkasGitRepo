<!DOCTYPE html>
<html lang="PL-pl">
<head>
  <meta charset="utf-8">
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
      $polaczenie = mysqli_connect('localhost','root','','biblioteka');
      $zapytanie = "SELECT autor, tytul, kod FROM ksiazki ORDER BY RAND() LIMIT 5";
      $wynik = mysqli_query($polaczenie, $zapytanie);
      while ($wiersz = mysqli_fetch_array($wynik)) {
        echo '<tr>';
        echo '<td>'.htmlspecialchars($wiersz[0]).'</td>';
        echo '<td>'.htmlspecialchars($wiersz[1]).'</td>';
        echo '<td>'.htmlspecialchars($wiersz[2]).'</td>';
        echo '</tr>';
      }
      mysqli_close($polaczenie);
      ?>
    </table>
  </section>

  <main>
    <article id="niebieski">
      <img src="ksiazka1.jpg" alt="okładka książki">
      <p>Według różnych podań najpaskudniejsza ropucha nosi w głowie piękny, cenny klejnot.</p>
    </article>
    <article id="zielony">
      <img src="ksiazka2.jpg" alt="okładka książki">
      <p>Panna Stefcia i Maryla nie są to zbyt grzeczne damy, nawet nie słuchają mamy...</p>
    </article>
    <article id="fioletowy">
      <img src="ksiazka3.jpg" alt="okładka książki">
      <p>Ratuj mnie, przyjacielu, w ostatniej potrzebie: Kocham piękną Irenę. Rodzice i ona...</p>
    </article>
  </main>

  <footer>
    Stronę wykonał: 00000000000
  </footer>
</body>
</html>
