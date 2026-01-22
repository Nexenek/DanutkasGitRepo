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
        <h1>Główne różnice pomiędzy $_POST[] i $_GET[]</h1>
        <h3>W PHP to sposób przesyłania danych (URL vs. ciało żądania), ich widoczność (jaswne oraz ukryte) oraz przeznaczenie (GET do pobierania, POST do wysyłania lub operacji modyfikujących dane).</h3>
        <h2>$_GET[]</h2>
        Sposób przesyłania danych:<br>
        <ul><li>Dane są dołaczone jako parametry w URL (adresie strony np. ?id=1&name=test).</li>
        <li>Widoczność: dane są widoczne w adresie URL, co zawiązuje ryzyko ich wykradzenia.</li>
        <li>Ograniczenie długości: Ma ograniczenie długości przesyłanych danych, (zazwyczaj około 255 znaków)</li>
        <li>Zastosowania: Używana do wysyłania danych które są pobierane np. w wyszukiwaniach, przy zmianie strony w paginacji czy do odnośników.</li>
        </ul>
        <h2>$_POST[]</h2>
        Sposób przesyłania danych:<br>
        <ul><li>Dane są przesyłane w treści żądania HTTP, co zapewnia większą poufność.</li>
        <li>Widoczność: dane nie są widoczne w adresie URL, ani w historii przeglądarki, co czyni je bardziej dyskretnymi.</li>
        <li>Brak ograniczeń długości: Może przesyłać większe ilości danych, w tym pliki.</li>
        <li>Bezpieczeństwo: Lepiej nadaje się do przesyłania poufnych danych i operacji modyfikujących dane, takich jak logowanie, wysyłanie plików do bazy czy przesyłanie plików.</li>
        <li>Zastosowania: Używana do przesyłania danych w formularzach (np. podczas logowania), dłuższych tekstów, danych do bazy czy uploadu plików.</li></ul>
        </table>
    </ol>
    <h1>Funkcja header()</h1>
    <p>W PHP służy do wysyłania surowych nagłówków HTTP do przeglądarki klienta, co pozwala na kontrolę nad komunikacją między serwerem, a przeglądarką, np. do przekierowania użytkownika pod inny adres URL, ustawienia typu zawartości strony czy zarządzania sesjami, kluczowe jest, aby wywoływać tę funkcję przed wysłaniem jakiejkolwiek innej treści (HTML, znaki białej przestrzeni), ponieważ nagłówki muszą być wysłane przed ciałem odpowiedzi HTTP.</p>
    <h2>Jak działa funkcja header()?</h2>
    <ul>
        <li>Wysyłanie nagłówków: Funkcja header() umożliwia wysyłąnie dowolnego poprawnego nagłówka HTTP, który przeglądarka lub inny klient HTTP przetworzy.</li>
        <li>Przekierowania: Jest najczęściej używazna do przekierowania użytkownika na inny adres URL na przykład po udanym zalogowaniu lub zmianie struktury strony.</li>
        <li>Ustawienia typu zawartości: Pozwala na określenie typu zawartości przesyłanych danych (np. Conent-type: application/json), co jest kluczowe w komunikacji z innymi systemami lub aplikacjami.</li>
        <li>Zarządzanei sesjami i pamięcią podręczną: Służy do zarządzania plikami cookie i ustawieniami pamięci podręcznej co wpływa na działanie strony w przeglądarce.</li>
    </ul>
    <h2>Przekierowanie na inny adres URL:</h2>
    <code>
    header("location: http://www.example.com/nowa_strona.php");
    exit(); // ważne, aby przerwać dalsze działanie skryptu po przekierowaniu
    </code>
    <h1>Stałe w PHP</h1>
    <p>W języku PHP wysepują stałe, czyli identyfikatory, których wartość nie ulegają zmianie.
        Do definiowania stałych służy funkcja <em>define()</em>, która ma dwa argumenty: nazwę
        stałej oraz przypisaną do niej wartości.<br> Definicja stałej ma wartość: <br>
        <b>define(NAZWA_STALEJ, wartość);</b>
        <h4>Przykład dla stałej</h4>
        <?php
        define("wiek", 21);
        echo "<br>Nasz wiek to: ".wiek;
        ?>
    </p>
    <h2>Stałe predefiniowane</h2>
    <ol>
        <li>PHP_VERSION - stała reprezentująca aktualnie używaną werjsje PHP</li>
        <li>PHP_OS - stała zawierająca nazwę systemu operacyjnego, na którym uruchamiany jest
            PHP</li>
        <li>_FILE_ - stała zawierająca nazwe pliku ze skryptem, który jest aktualnie przetwarzany</li>
    </ol>
    <h1>Operatorzy i wydarzenia</h1>
    <p>W PHP operatorzy możem podzielić na</p>
    <ol>
        <li>Arytmetyczne<ul>
            <li>Dodawanie +</li>
            <li>Odejmowanie -</li>
            <li>Mnożenie *</li>
            <li>Dzielenie /</li>
            <li>Reszta z dzielenia %</li>
            <li>Potęgowanie **</li>
        </ul></li>
        <li>Porównania<ul>
            <li>Równe ==</li>
            <li>Identyczne ===</li>
            <li>Nie równe != lub <> </li>
            <li>Nie identyczne !==</li>
            <li>Większe ></li>
            <li>Większe lub równe >=</li>
            <li>Mniejsze <</li>
            <li>Mniejsze lub równe <=</li>
        </ul>
        </li>
        <li>bitowe (umożliwiają wykonanie operacji na poszczególnych bitach liczb)
        <ul>
        <li>& iloczyn bitowy (AND)</li>
        <li>| suma bitowa (OR)</li>
        <li>~ negacja bitowa (NOT)</li>
        <li>^ bitowa różnica symetryczna</li>
        <li>>> przesunięcie bitowe w prawo</li>
        <li>&lt;&lt; przesunięcie bitowe w lewo</li>
        </ul>
        </li>
        <li>logiczne
        <ul>
        <li>iloczyn logiczny - and, &&</li>
        <li>suma logiczna - or, ||</li>
        <li>negacja logiczna - !</li>
        <li>różnica symetryczna - xor</li>
        </ul>
        </li>
        <li>przypisania
        <ul>
        <li>= , $x=23;</li>
        <li>+= , $x+=5;</li>
        <li>-= , $x-=5;</li>
        <li>*= , $x*=5;</li>
        <li>/= , $x/=5;</li>
        <li>%= , $x%=5;</li>
        </ul></li>
        <li>łańcuchowe (znak konkatenacji)
        <ul>
        <li>łączenie łańcuchów znakowych <b>.</b> $x="moje "." miasto";</li>
        <li>dołączanie łańcucha znakowego <b>.=</b> $x="moje "; $x.=" miasto "</li>
        </ul>
        </li>
        <?php
        $osoba["nazwisko"]="Kowalski";
        $osoba["imie"]="Jan";
        $osoba["wiek"]=27;
        echo $osoba["nazwisko"]. " ".$osoba["imie"]." ma ".$osoba["wiek"]." lat. ";
        ?>
        </li>
        <li>inkrementacji i dekrementacji
        <ul>
        <li>zwiększania licznika o 1 $x++;</li>
        <li>zmniejszania licznika o 1 $x--;</li>
        </ul>
        </li>
    </ol>
    <h1>PHP operacje na plikach</h1>
    <h2>funckja fopen()</h2>
    <p>Funkcja otwierania pliku, ogólna składnia: fopen('nazwa pliku', 'tryb_otwarcia') </p>
        <h3>Zestawienie trybów otwarcia</h3>
        <table border="1">
            <tr>
                <td>'r'</td>
                <td>Otwiera tylko do odczytu; umieszcza wskaźnik pliku na jego początku.</td>
            </tr>
            <tr>
                <td>'r+'</td>
                <td>Otwiera do odczytu i zapisu; umieszcza wskaźnik pliku na jego początku.</td>
            </tr>
            <tr>
                <td>'w'</td>
                <td>Otwiera tylko do zapisu; umieszcza wskaźnik pliku na jego początku i obcina plik do zerowej długości. Jeśli plik nie istnieje to próbuje go utworzyć.</td>
            </tr>
            <tr>
                <td>'w+'</td>
                <td>Otwiera do odczytu i zapisu; umieszcza wskaźnik pliku na jego początku i obcina plik do zerowej długości. Jeśli plik nie istnieje to próbuje go utworzyć.</td>
            </tr>
            <tr>
                <td>'a'</td>
                <td>Otwiera tylko do zapisu; umieszcza wskaźnik pliku na jego końcu. Jeśli plik nie istnieje to próbuje go utworzyć.</td>
            </tr>
            <tr>
                <td>'a+'</td>
                <td>Otwiera do odczytu i zapisu; umieszcza wskaźnik pliku na jego końcu. Jeśli plik nie istnieje to próbuje go utworzyć.</td>
            </tr>
            <tr>
                <td>'x'</td>
                <td>Tworzy i otwiera plik tylko do zapisu; umieszcza wskaźnik pliku na jego początku. Jeśli plik już istnieje, wywołanie fopen() nie powiedzie się, zwróci FALSE i wygeneruje błąd na poziomie E_WARNING. Jeśli plik nie istnieje, spróbuje go utworzyć. To jest równoważne z określeniem flag O_EXCL|O_CREAT stosowanym w wywołaniu systemowym open(2).</td>
            </tr>
            <tr>
                <td>'x+'</td>
                <td>Tworzy i otwiera plik odczytu i zapisu; umieszcza wskaźnik pliku na jego początku. Jeśli plik już istnieje, wywołanie fopen() nie powiedzie się, zwróci FALSE i wygeneruje błąd na poziomie E_WARNING. Jeśli plik nie istnieje, spróbuje go utworzyć. To jest równoważne z określeniem flag O_EXCL|O_CREAT stosowanym w wywołaniu systemowym open(2).</td>
            </tr>
        </table>
        <h1>fputs() zapisuje do otwartego pliku. (lub funkcja fwrite())</h1>
        <h3>Funkcja zatrzyma się na końcu pliku lub po osiągnięciu określonej długości, w zależności od tego co nastąpi wcześniej.<br>
        Ta funkcja zwraca liczbę bajtów zapisanych w przypadku powodzenia, FALSE w przypadku porażki.<br>
        fputs() funkcji jest alias fwrite() funkcji.<br>
        </h3>
        <h3>Składnia:<br>
        fputs(file,string,length)</h3>
        <table border="1">
            <tr>
                <td>Parametr</td>
                <td>Opis</td>
            </tr>
            <tr>
                <td>file</td>
                <td>Wymagany. Określa otworzenie pliku do zapisu</td>
            </tr>
            <tr>
                <td>string</td>
                <td>Wymagany. Określa ciąg zapisu otwartego pliku</td>
            </tr>
            <tr>
                <td>length</td>
                <td>Opcjonalny. Określa maksymalną liczbę bajtów do zapisania</td>
            </tr>
        </table>
        <h3>Do zamykania pliku służy funkcja <strong>fclose()</strong> zapisywana w postaci:<br>
        fclose(deskryptor)<br>
        Deskryptor to wartość zwrócona przez funkcje <em>fopen()</em>
        </h3>
        <h2>Odczyt danych to funkcja fgets()<br>
        fgets(deskryptor, ile_znaków)
        </h2>
        <h1>Dołączanie plików</h1>
        <h3>Duży plik można podzielić i dołączać poszczególne pliki służy do tego polecenie <em>include lub require</em></h3>
    <h2>Funkcje haszowania w PHP</h2>
    <ol>
 W PHP istnieje wiele funkcji hashowych, ważne z nich to:

 <li>Bcrypt: password_hash() - Najbardziej bezpieczne haszowanie haseł, wolne obliczeniowo, używa wewnętrznej soli i haszuje iteracyjnie.</li>
 <li>md5() - Bardzo szybka funkcja nadająca się do haszowania plików. Wyjście ma zawsze 32 znaki.</li>
 <li>sha1() - Szybka funkcja haszująca do haszowania plików, używana wewnętrznie przez Git do haszowania commitów. Dane wyjściowe mają zawsze 40 znaków.</li>
 <li>Funkcja hash() służy do haszowania ciągów znaków. Przyjmuje ona trzy parametry - dwa obowiązkowe i trzecie opcjonalny:

 $algo - string - oznacza algorytm, którym chcemy użyć do zahashowania ciągu. Aby poznać listę obsługiwanych algorytmów, możemy skorzystać z bezparametrowej funkcji hash_algos;
 $data - string - jest to ciąg znaków, które chcemy zhashować;
 $raw_output - bool, domyślnie false - określa czy chcemy otrzymać wynik w postaci czystego stringu, czy w postaci binarnej.</li>
</ol>
<h1>Pliki cookies w PHP</h1>
<h3>Pliki cookies</h3>
<h4>To niewielkie pliki tekstowe wysyłane przez serwer lub skrypt do przeglądarki i umieszczane przez nią na dysku użytkownika. Pliki te są częścią specyfikacji protokołu HTTP i są wysyłane do przeglądarki w postaci nagłówka o nazwie <em>Set-Cookie</em>. Służą do identyfikacji użytkownika, zawierają między innymi nazwę serwera, datę wygaśnięcia pliku oraz informację na temat domeny i ścieżki dostępu do pliku.</h4>
<h3>Zasady działania plików cookies:</h3>
<ul>
<li>Po nawiązaniu połączenia serwer wysyła do przeglądarki nagłówek <em>Set-Cookie</em> , który zawiera plik cookie.</li>
<li>Przeglądarka zapisuje plik na dysku użytkownika</li>
<li>przy kolejnym połączeniu z serwerem przeglądarka wysyła na serwer przechowywany na dysku plik cookie</li>
</ul>
<h2>Tworzenie pliku cookie</h2>
<h3>W skryptach PHP pliki cookies tworzone są za pomocą funkcji <strong>setcookie()</strong>, która ma postać:</h3>
<h4>setcookie(nazwa, wartość, czas_trwania, ścieżka_dostępu, domena, bezpieczeństwo, tylko_http)</h4>
<h3>Argumenty funkcji to:</h3>
<ol>
<li>nazwa - nazwa pliku</li>
<li>wartość - wartość, która będzie przechowywana w pliku cookie</li>
<li>czas trwania - czas po jakim plik zostanie usunięty przez przeglądarkę . Jest on podawany jako liczba sekund , które upłynęły od 1 stycznia 1970 r</li>
<li>ścieżka dostępu - ścieżka dostępu na serwerze dla pliku cookie</li>
<li>domena - domena w której plik cookie będzie dostępny</li>
<li>bezpieczeństwo - przyjmuje wartości true lub false. Ustawienie na true spowoduje, że plik będzie mógł być przesłany tylko przez bezpieczne połączenie HTTPS</li>
<li>tylko_http - nie będzie dostępne z poziomu skryptów.</li>
</ol>
344     <h2>Usuwanie plików cookie</h3>
345     <h3>Aby samodzielnie usunąć plik cookie, można ustawić dla niego czas ważności, który już upłynął.</h3>
346     <h4>setcookie("pismo", "Na skróty", time()-100, "/", "localhost", 0)</h4>
347     <h2>Data ostatnich odwiedzin na stronie</h2>
348     ----------------------------------------------------------
349     $mies=2592000+time();
350     setcookie("wizyta", date("F jS - g:ia"), $mies);
351
352     if(isset($_COOKIE['wizyta'])){
353         $ostatnia=$_COOKIE['wizyta'];
354         echo "Witamy ponownie!<br> Ostatni raz odwiedziłeś nas: ".$ostatnia;
355     }else{
356         echo "Witamy na naszej stronie";
357     }
358     ----------------------------------------------------------
359
360     </body>
361     </html>
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