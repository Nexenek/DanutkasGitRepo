<?php
$polaczenie = mysqli_connect('localhost', 'root', '', 'szkolenia');
$komunikat = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $imie =  $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];
    $wiek = $_POST['wiek'];
    $zap3 = "INSERT INTO uczestnicy(imie, nazwisko, wiek) VALUES ('$imie', '$nazwisko', $wiek)";
    mysqli_query($polaczenie, $zap3);
    $komunikat = "Dane uczestnika $imie $nazwisko zostały dodane";
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
	<meta charset="utf-8">
	<title>Szkolenia i kursy</title>
	<link rel="stylesheet" href="styl.css">
</head>
<body>
	<header>
		<h1>SZKOLENIA</h1>
	</header>

	<main>
		<section id="lewa">
			<table>
				<thead>
					<tr>
						<th>Kurs</th>
						<th>Nazwa</th>
						<th>Cena</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$sql1 = "SELECT kod, nazwa, cena FROM kursy ORDER BY kod";
					$wynik1 = mysqli_query($polaczenie, $sql1);
					while ($w = mysqli_fetch_row($wynik1)) {
						echo '<tr>';
						echo '<td><img src="' . $w[0] . '.jpg" alt="kurs"></td>';
						echo '<td>' . $w[1] . '</td>';
						echo '<td>' . $w[2] . '</td>';
						echo '</tr>';
					}
					?>
				</tbody>
			</table>
		</section>

		<section id="prawa">
			<h2>Zapisy na kursy</h2>
			<?php if ($komunikat != '') { echo '<p>' . $komunikat . '</p>'; } ?>
			<form method="post">
				<label for="imie">Imię</label><br>
				<input type="text" id="imie" name="imie" required>
                <br>
				<label for="nazwisko">Nazwisko</label><br>
				<input type="text" id="nazwisko" name="nazwisko" required>
                <br>
				<label for="wiek">Wiek</label><br>
				<input type="number" id="wiek" name="wiek" min="1" required>
                <br>
				<label for="kod_kursu">Rodzaj kursu</label><br>
				<select id="kod_kursu" name="kod_kursu">
					<?php
					$sql2 = "SELECT kod, nazwa FROM kursy ORDER BY nazwa";
					$wynik2 = mysqli_query($polaczenie, $sql2);
					while ($w2 = mysqli_fetch_row($wynik2)) {
						echo '<option value="' . $w2[0] . '">' . $w2[1] . '</option>';
					}
					?>
				</select>

				<button type="submit">Dodaj dane</button>
			</form>
		</section>
	</main>

	<footer>
		<p>Stronę wykonał: 00000000000</p>
	</footer>

	<?php mysqli_close($polaczenie); ?>
</body>
</html>
