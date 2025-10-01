<!DOCTYPE html>
<html lang="PL-pl">
<head>
    <meta charset="UTF-8">
    <title>Podstawy Języka PHP</title>
</head>
<body>
    <h1>Podstawy PHP</h1>
    <p>Rozpoczynanie i zakończenie poleceń PHP odbywa się za pomocą znaczników: </p>
    <ul>
        <li>Znak otwierajacy - znak mniejszości&lt;?php</li>
        <li>Znak zamykający - ?znak wiekszości - ?></li>
    </ul>
    <h1>Komentarze</h1>
    Występujące trzy rodaje komentarzy:
    <ul>
        <li>Komentarze blokowe - zaczyna sie od znaku /* i kończy sie */</li>
        <li>Komentarze jednowierszowe - zaczyna się od znaków // i kończy w bieżącej linii</li>
        <li>Lp,emtarze jednowierszowe uniksowy - zaczyna sie od znaku # i ciagnie sie do końca linii</li>
    </ul>
    <h1>Zmienne</h1>
    <p>Przed nazwą zmiennej należy umieścić znak $. Warunki jakie muszą być spełnione przy nazwie:</p>
    <ul>
        <li>musi zaczynać się od litery lub znaku podrkeślenia</li>
        <li>może składać sie jedynie z liter, cyfr i znaków podrkęslenia</li>
        <li>w nazwach rozróżnianie sa duże i małe litery</li>
        <li>w nazwach można stosować polskie litery</li>
    </ul>
    <h3>Przy odwołaniu się do zmiennej zawsze należy użyć znaku $</h3>
    <h1>Zmienne predefiniowane</h1>
    <ul>
        <li><strong>$_GET[]</strong> - przechowuje dane przesłane metodą GET (np. z adresu URL)</li>
        <li><strong>$_POST[]</strong> - przechowuje dane przesłane metodą POST (np. z formularza)</li>
        <li><strong>$_COOKIE[]</strong> - przechowuje dane zapisane w ciasteczkach</li>
        <li><strong>$_FILES[]</strong> - przechowuje informacje o plikach przesłanych na serwer</li>
        <li><strong>$_SERVER[]</strong> - przechowuje informacje o serwerze i środowisku wykonawczym</li>
        <li><strong>$_REQUEST[]</strong> - przechowuje dane z $_GET, $_POST i $_COOKIE</li>
        <li><strong>$_ENV[]</strong> - przechowuje zmienne środowiskowe</li>
        <li><strong>$GLOBALS[]</strong> - przechowuje wszystkie zmienne globalne w tablicy asocjacyjnej</li>
        <li><strong>$_SESSION[]</strong> - przechowuje dane sesji użytkownika</li>
    </ul>
    <h1>Typy danych</h1>
    <h3>W PHP występuje 3 rodzaje typów danych:</h3>
    <ol>
        <li>Typy proste (skalarne):
            <ul>
                <li>Integer (liczby całkowite)</li>
                <li>Przykłady zapisu liczb całkowitych w różnych formatach
                    <ol>
                        <li>537 - dodatnia liczba całkowita</li>
                        <li>-537 - ujemna liczba całkowita</li>
                        <li>023 - dodatnia liczba całkowita zapisana w systemie ósemkowym</li>
                        <li>-023 - ujemna liczba całkowita zapisana w systemie ósemkowym</li>
                        <li>0x2A - dodatnia liczba całkowita zapisana w systemie szesnastkowym</li>
                        <li>-0x2A - ujemna liczba całkowita zapisana w systemie szesnastkowym</li>
                    </ol>
                </li>
                <li>Float lub double (liczby zmiennoprzecinkowe)</li>
                <li>String (łańcuchy znaków) Można go utworzyć za pomocą 
                    <ul>
                        <li>pojedynczych cudzysłowów (') - interpretowane dosłownie, bez analizy zmiennych i sekwencji specjalnych</li>
                        <li>podwójnych cudzysłowów (") - interpretowane z analizą zmiennych i sekwencji specjalnych</li>
                        <li>Używając składni <i>heredoc</i>
                    </ul>
                </li>
                <li>Boolean (wartości logiczne: true/false)</li>
            </ul>
        </li>
        <li>Typy złożone:
            <ul>
                <li>Array (tablice)</li>
                <li>Object (obiekty)</li>
                <li>Callable (funkcje wywoływalne)</li>
                <li>Iterable (iterowalne)</li>
            </ul>
        <h1> Funkcje języka PHP do obsługi bazy MySQLi</h1>
        <table>
            <th>Funkcje biblioteki MySQLi</th><th>Zwracana wartość</th>
            <tr><td>mysqli_connect(serwer, uzytkownik, haslo, baza_danych)</td><td>obiekt mysqli lub FALSE w przypadku błędu</td></tr>
            <tr><td>mysqli_select_db(id_polaczenia, nazwa_bazy)</td><td>TRUE w przypadku powodzenia lub FALSE w przypadku błędu</td></tr>
            <tr><td>mysqli_error(id_polaczenia)</td><td>string zawierający opis ostatniego błędu lub pusty string, jeśli nie wystąpił żaden błąd</td></tr>
            <tr><td>mysqli_close(id_polaczenia)</td><td>TRUE w przypadku powodzenia lub FALSE w przypadku błędu</td></tr>
            <tr><td>mysqli_query(id_polaczenia, zapytanie)</td><td>obiekt mysqli_result dla zapytań SELECT, TRUE dla zapytań INSERT, UPDATE, DELETE lub FALSE w przypadku błędu</td></tr>
            <tr><td>mysqli_fetch_row(wynik_zapytania)</td><td>tablica indeksowana numerycznie reprezentująca wiersz wyniku lub NULL, jeśli nie ma więcej wierszy</td></tr>
            <tr><td>mysqli_fetch_fields(wynik_zapytania)</td><td>tablica obiektów reprezentujących pola wyniku lub FALSE w przypadku błędu</td></tr>
            <tr><td>isset($zmienna)</td><td>TRUE, jeśli $zmienna jest ustawiona i nie jest NULL, w przeciwnym razie FALSE</td></tr>
        </table>
    </body>
</html>

<?php
echo "<h2>Mój pierwszy skrypt PHP</h2>";
$x = 60;
$y = 7;
echo $x + $y;
$zmienna1=374;
$zmienna7=26;
$ilosc=$zmienna1+$zmienna7;
echo "<h3>Wynik wartości $zmienna1 i $zmienna7 to $ilosc</h3>";
echo "<h3>W języku PHP napisz skrypt, który będzie obliczał sumę, różnicę, iloraz, iloczyn i resztę dzielenia dwóch dowolnych liczb.</h3>";
$a = 89;
$b = 56;
$suma = $a+ $b;
$roznica = $a - $b;
$iloczyn = $a*$b;
$iloraz = $a/$b;
$reszta = $a%$b;
echo "<h3>Suma wynosi: $suma<br> różnica wynosi: $roznica<br> iloczyn wynosi: $iloczyn<br> iloraz wynosi: $iloraz<br> reszta z dzielenia wynosi: $reszta</h3>";
?>